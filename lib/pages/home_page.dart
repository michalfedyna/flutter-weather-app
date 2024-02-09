import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/weather_data_provider/weather_data_provider.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  Function() _onButtonPressed(WidgetRef ref) {
    return () {
      ref.read(weatherDataProvider('Skawina').notifier).changeLocation(20, 20);
    };
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(
      weatherDataProvider('Skawina'),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _onButtonPressed(ref),
        child: Icon(Icons.refresh),
      ),
      body: Container(
        padding: MediaQuery.of(context).padding,
        child: Center(
          child: weather.when(
            data: (data) => Text(data.toString()),
            error: (error, __) => Text('Error: ${error.toString()}'),
            loading: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
