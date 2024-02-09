import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class Observers extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('prevValue: $previousValue',
        name: '${provider.name ?? provider.runtimeType}');
    log('newValue: $newValue',
        name: '${provider.name ?? provider.runtimeType}');
  }

  @override
  void didDisposeProvider(ProviderBase provider, ProviderContainer container) {
    log('didDisposeProvider', name: '${provider.name ?? provider.runtimeType}');
    super.didDisposeProvider(provider, container);
  }
}
