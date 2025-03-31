// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTrendingHash() => r'c9de8642aa03ab701f792d3ed3f2591a47bc7db6';

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

/// A Riverpod provider that fetches trending media (movies or TV shows) from the TMDB API.
///
/// This provider uses the `TMDBRepository` to fetch trending media based on the provided
/// media type (`movie` or `tv`) and page number. It returns a list of `MediaModel` objects.
///
/// Parameters
/// - [mediaType]: The type of media to fetch. Can be either "movie" or "tv".
/// - [page]: The page number for pagination.
///
/// Throws:
/// - An error if the API call fails.
///
/// Returns:
/// - A `Future` that resolves to a list of `MediaModel` objects.
///
/// Copied from [fetchTrending].
@ProviderFor(fetchTrending)
const fetchTrendingProvider = FetchTrendingFamily();

/// A Riverpod provider that fetches trending media (movies or TV shows) from the TMDB API.
///
/// This provider uses the `TMDBRepository` to fetch trending media based on the provided
/// media type (`movie` or `tv`) and page number. It returns a list of `MediaModel` objects.
///
/// Parameters
/// - [mediaType]: The type of media to fetch. Can be either "movie" or "tv".
/// - [page]: The page number for pagination.
///
/// Throws:
/// - An error if the API call fails.
///
/// Returns:
/// - A `Future` that resolves to a list of `MediaModel` objects.
///
/// Copied from [fetchTrending].
class FetchTrendingFamily extends Family<AsyncValue<List<MediaModel>>> {
  /// A Riverpod provider that fetches trending media (movies or TV shows) from the TMDB API.
  ///
  /// This provider uses the `TMDBRepository` to fetch trending media based on the provided
  /// media type (`movie` or `tv`) and page number. It returns a list of `MediaModel` objects.
  ///
  /// Parameters
  /// - [mediaType]: The type of media to fetch. Can be either "movie" or "tv".
  /// - [page]: The page number for pagination.
  ///
  /// Throws:
  /// - An error if the API call fails.
  ///
  /// Returns:
  /// - A `Future` that resolves to a list of `MediaModel` objects.
  ///
  /// Copied from [fetchTrending].
  const FetchTrendingFamily();

  /// A Riverpod provider that fetches trending media (movies or TV shows) from the TMDB API.
  ///
  /// This provider uses the `TMDBRepository` to fetch trending media based on the provided
  /// media type (`movie` or `tv`) and page number. It returns a list of `MediaModel` objects.
  ///
  /// Parameters
  /// - [mediaType]: The type of media to fetch. Can be either "movie" or "tv".
  /// - [page]: The page number for pagination.
  ///
  /// Throws:
  /// - An error if the API call fails.
  ///
  /// Returns:
  /// - A `Future` that resolves to a list of `MediaModel` objects.
  ///
  /// Copied from [fetchTrending].
  FetchTrendingProvider call({
    required String mediaType,
    required int page,
  }) {
    return FetchTrendingProvider(
      mediaType: mediaType,
      page: page,
    );
  }

  @override
  FetchTrendingProvider getProviderOverride(
    covariant FetchTrendingProvider provider,
  ) {
    return call(
      mediaType: provider.mediaType,
      page: provider.page,
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
  String? get name => r'fetchTrendingProvider';
}

/// A Riverpod provider that fetches trending media (movies or TV shows) from the TMDB API.
///
/// This provider uses the `TMDBRepository` to fetch trending media based on the provided
/// media type (`movie` or `tv`) and page number. It returns a list of `MediaModel` objects.
///
/// Parameters
/// - [mediaType]: The type of media to fetch. Can be either "movie" or "tv".
/// - [page]: The page number for pagination.
///
/// Throws:
/// - An error if the API call fails.
///
/// Returns:
/// - A `Future` that resolves to a list of `MediaModel` objects.
///
/// Copied from [fetchTrending].
class FetchTrendingProvider
    extends AutoDisposeFutureProvider<List<MediaModel>> {
  /// A Riverpod provider that fetches trending media (movies or TV shows) from the TMDB API.
  ///
  /// This provider uses the `TMDBRepository` to fetch trending media based on the provided
  /// media type (`movie` or `tv`) and page number. It returns a list of `MediaModel` objects.
  ///
  /// Parameters
  /// - [mediaType]: The type of media to fetch. Can be either "movie" or "tv".
  /// - [page]: The page number for pagination.
  ///
  /// Throws:
  /// - An error if the API call fails.
  ///
  /// Returns:
  /// - A `Future` that resolves to a list of `MediaModel` objects.
  ///
  /// Copied from [fetchTrending].
  FetchTrendingProvider({
    required String mediaType,
    required int page,
  }) : this._internal(
          (ref) => fetchTrending(
            ref as FetchTrendingRef,
            mediaType: mediaType,
            page: page,
          ),
          from: fetchTrendingProvider,
          name: r'fetchTrendingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTrendingHash,
          dependencies: FetchTrendingFamily._dependencies,
          allTransitiveDependencies:
              FetchTrendingFamily._allTransitiveDependencies,
          mediaType: mediaType,
          page: page,
        );

  FetchTrendingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.mediaType,
    required this.page,
  }) : super.internal();

  final String mediaType;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<MediaModel>> Function(FetchTrendingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTrendingProvider._internal(
        (ref) => create(ref as FetchTrendingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        mediaType: mediaType,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MediaModel>> createElement() {
    return _FetchTrendingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTrendingProvider &&
        other.mediaType == mediaType &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, mediaType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchTrendingRef on AutoDisposeFutureProviderRef<List<MediaModel>> {
  /// The parameter `mediaType` of this provider.
  String get mediaType;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchTrendingProviderElement
    extends AutoDisposeFutureProviderElement<List<MediaModel>>
    with FetchTrendingRef {
  _FetchTrendingProviderElement(super.provider);

  @override
  String get mediaType => (origin as FetchTrendingProvider).mediaType;
  @override
  int get page => (origin as FetchTrendingProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
