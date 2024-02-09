import 'package:flutter/material.dart';
import 'package:weather/router.dart';
import 'package:weather/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Weather',
      theme: theme,
      routerConfig: routerConfig,
    );
  }
}
