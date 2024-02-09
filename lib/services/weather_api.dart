import 'package:dio/dio.dart';

enum RequestMode { current, hourly, daily }

class WeatherApi {
  WeatherApi({required this.mode});

  WeatherApi.current({this.mode = RequestMode.current});

  WeatherApi.hourly({this.mode = RequestMode.hourly});

  WeatherApi.daily({this.mode = RequestMode.daily});

  RequestMode mode;
  final String _baseUrl = 'https://api.open-meteo.com/v1/forecast?';

  Future<Response<T>> get<T>(num lat, num long) async {
    final baseOptions = BaseOptions(baseUrl: _baseUrl);

    print(_currentPath(lat, long));

    return Dio(baseOptions).get(_currentPath(lat, long));
  }

  String _baseParams() {
    return 'temperature_2m,relative_humidity_2m,apparent_temperature,is_day,precipitation,rain,showers,snowfall,weather_code,cloud_cover,pressure_msl,surface_pressure,wind_speed_10m,wind_direction_10m,wind_gusts_10m&timeformat=unixtime&timezone=GMT';
  }

  String _currentPath(num lat, num long) {
    return 'latitude=${lat.toString()}&longitude=${long.toString()}&current=${_baseParams()}';
  }
}

class WeatherApiAdapter {}
