// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mediaDetailsHash() => r'a8a157ca41ace3de0dcf358ccefbbc98f3c47d7a';

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

/// See also [mediaDetails].
@ProviderFor(mediaDetails)
const mediaDetailsProvider = MediaDetailsFamily();

/// See also [mediaDetails].
class MediaDetailsFamily extends Family<AsyncValue<MediaDetailsModel>> {
  /// See also [mediaDetails].
  const MediaDetailsFamily();

  /// See also [mediaDetails].
  MediaDetailsProvider call(
    GetMediaDetailsParams params,
  ) {
    return MediaDetailsProvider(
      params,
    );
  }

  @override
  MediaDetailsProvider getProviderOverride(
    covariant MediaDetailsProvider provider,
  ) {
    return call(
      provider.params,
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
  String? get name => r'mediaDetailsProvider';
}

/// See also [mediaDetails].
class MediaDetailsProvider
    extends AutoDisposeFutureProvider<MediaDetailsModel> {
  /// See also [mediaDetails].
  MediaDetailsProvider(
    GetMediaDetailsParams params,
  ) : this._internal(
          (ref) => mediaDetails(
            ref as MediaDetailsRef,
            params,
          ),
          from: mediaDetailsProvider,
          name: r'mediaDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mediaDetailsHash,
          dependencies: MediaDetailsFamily._dependencies,
          allTransitiveDependencies:
              MediaDetailsFamily._allTransitiveDependencies,
          params: params,
        );

  MediaDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final GetMediaDetailsParams params;

  @override
  Override overrideWith(
    FutureOr<MediaDetailsModel> Function(MediaDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MediaDetailsProvider._internal(
        (ref) => create(ref as MediaDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        params: params,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MediaDetailsModel> createElement() {
    return _MediaDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MediaDetailsProvider && other.params == params;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, params.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MediaDetailsRef on AutoDisposeFutureProviderRef<MediaDetailsModel> {
  /// The parameter `params` of this provider.
  GetMediaDetailsParams get params;
}

class _MediaDetailsProviderElement
    extends AutoDisposeFutureProviderElement<MediaDetailsModel>
    with MediaDetailsRef {
  _MediaDetailsProviderElement(super.provider);

  @override
  GetMediaDetailsParams get params => (origin as MediaDetailsProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
