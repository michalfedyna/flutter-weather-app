import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather/services/weather_api.dart';

import '../../models/weather/weather.dart';

part 'weather_data_provider.g.dart';

@Riverpod()
class WeatherData extends _$WeatherData {
  @override
  Future<Weather> build(String place) async {
    final response = await WeatherApi.current().get(10, 10);
    return Weather.fromJson(response.data);
  }

  Future<void> changeLocation(num lat, num long) async {
    final response = await WeatherApi.current().get(lat, long);
    final currentWeather = Weather.fromJson(response.data);
    state = AsyncData(currentWeather);
  }
}
