// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$weatherDataHash() => r'fe0bcf4a32968321bb4656ba2541c0a2d8cb7669';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$WeatherData
    extends BuildlessAutoDisposeAsyncNotifier<Weather> {
  late final String place;

  FutureOr<Weather> build(
    String place,
  );
}

/// See also [WeatherData].
@ProviderFor(WeatherData)
const weatherDataProvider = WeatherDataFamily();

/// See also [WeatherData].
class WeatherDataFamily extends Family<AsyncValue<Weather>> {
  /// See also [WeatherData].
  const WeatherDataFamily();

  /// See also [WeatherData].
  WeatherDataProvider call(
    String place,
  ) {
    return WeatherDataProvider(
      place,
    );
  }

  @override
  WeatherDataProvider getProviderOverride(
    covariant WeatherDataProvider provider,
  ) {
    return call(
      provider.place,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'weatherDataProvider';
}

/// See also [WeatherData].
class WeatherDataProvider
    extends AutoDisposeAsyncNotifierProviderImpl<WeatherData, Weather> {
  /// See also [WeatherData].
  WeatherDataProvider(
    String place,
  ) : this._internal(
          () => WeatherData()..place = place,
          from: weatherDataProvider,
          name: r'weatherDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$weatherDataHash,
          dependencies: WeatherDataFamily._dependencies,
          allTransitiveDependencies:
              WeatherDataFamily._allTransitiveDependencies,
          place: place,
        );

  WeatherDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.place,
  }) : super.internal();

  final String place;

  @override
  FutureOr<Weather> runNotifierBuild(
    covariant WeatherData notifier,
  ) {
    return notifier.build(
      place,
    );
  }

  @override
  Override overrideWith(WeatherData Function() create) {
    return ProviderOverride(
      origin: this,
      override: WeatherDataProvider._internal(
        () => create()..place = place,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        place: place,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<WeatherData, Weather>
      createElement() {
    return _WeatherDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is WeatherDataProvider && other.place == place;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, place.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin WeatherDataRef on AutoDisposeAsyncNotifierProviderRef<Weather> {
  /// The parameter `place` of this provider.
  String get place;
}

class _WeatherDataProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<WeatherData, Weather>
    with WeatherDataRef {
  _WeatherDataProviderElement(super.provider);

  @override
  String get place => (origin as WeatherDataProvider).place;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
