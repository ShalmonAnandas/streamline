// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendations_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$recommendationsHash() => r'eed8bbe7427dff861ce7c22242cdb88e729c147b';

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

/// See also [recommendations].
@ProviderFor(recommendations)
const recommendationsProvider = RecommendationsFamily();

/// See also [recommendations].
class RecommendationsFamily extends Family<AsyncValue<List<MediaModel>?>> {
  /// See also [recommendations].
  const RecommendationsFamily();

  /// See also [recommendations].
  RecommendationsProvider call(
    GetRecommendationsParams params,
  ) {
    return RecommendationsProvider(
      params,
    );
  }

  @override
  RecommendationsProvider getProviderOverride(
    covariant RecommendationsProvider provider,
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
  String? get name => r'recommendationsProvider';
}

/// See also [recommendations].
class RecommendationsProvider
    extends AutoDisposeFutureProvider<List<MediaModel>?> {
  /// See also [recommendations].
  RecommendationsProvider(
    GetRecommendationsParams params,
  ) : this._internal(
          (ref) => recommendations(
            ref as RecommendationsRef,
            params,
          ),
          from: recommendationsProvider,
          name: r'recommendationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$recommendationsHash,
          dependencies: RecommendationsFamily._dependencies,
          allTransitiveDependencies:
              RecommendationsFamily._allTransitiveDependencies,
          params: params,
        );

  RecommendationsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.params,
  }) : super.internal();

  final GetRecommendationsParams params;

  @override
  Override overrideWith(
    FutureOr<List<MediaModel>?> Function(RecommendationsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RecommendationsProvider._internal(
        (ref) => create(ref as RecommendationsRef),
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
  AutoDisposeFutureProviderElement<List<MediaModel>?> createElement() {
    return _RecommendationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RecommendationsProvider && other.params == params;
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
mixin RecommendationsRef on AutoDisposeFutureProviderRef<List<MediaModel>?> {
  /// The parameter `params` of this provider.
  GetRecommendationsParams get params;
}

class _RecommendationsProviderElement
    extends AutoDisposeFutureProviderElement<List<MediaModel>?>
    with RecommendationsRef {
  _RecommendationsProviderElement(super.provider);

  @override
  GetRecommendationsParams get params =>
      (origin as RecommendationsProvider).params;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
