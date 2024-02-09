import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'observers.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [
        Observers(),
      ],
      child: const App(),
    ),
  );
}
