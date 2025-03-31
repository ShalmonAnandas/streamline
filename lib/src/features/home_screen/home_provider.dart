import 'package:domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart';

part 'home_provider.g.dart';

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
@riverpod
Future<List<MediaModel>> fetchTrending(
  Ref ref, {
  required String mediaType,
  required int page,
}) async {
  final tmdbRepo = getIt<TMDBRepository>();
  final response =
      await tmdbRepo.getTrending(GetTrendingParams(mediaType, page));

  return response.fold(
    (error) => throw error,
    (results) => results ?? [],
  );
}

/// A `StateProvider` that keeps track of the current page number for pagination.
///
/// Default value: `1`.
final currentPageProvider = StateProvider<int>((ref) => 1);

/// A `StateProvider` that holds the list of trending movies.
///
/// Default value: An empty list of `MediaModel`.
final trendingMoviesProvider = StateProvider<List<MediaModel>>((ref) => []);

/// A `StateProvider` that holds the list of trending TV shows.
///
/// Default value: An empty list of `MediaModel`.
final trendingShowsProvider = StateProvider<List<MediaModel>>((ref) => []);

/// Fetches the next page of trending movies and updates the `trendingMoviesProvider`.
///
/// This function reads the current page number from `currentPageProvider`, fetches
/// the trending movies for that page using the `fetchTrending` provider, and appends
/// the new movies to the existing list in `trendingMoviesProvider`. It then increments
/// the current page number.
///
/// Parameters:
/// - [ref]: A `WidgetRef` used to read and update providers.
///
/// Throws:
/// - An error if the API call fails.
Future<void> fetchAndUpdateMovies(WidgetRef ref) async {
  final currentPage = ref.read(currentPageProvider.notifier).state;
  final newMovies = await ref.read(fetchTrendingProvider(
    mediaType: "movie",
    page: currentPage,
  ).future);

  ref
      .read(trendingMoviesProvider.notifier)
      .update((state) => [...state, ...newMovies]);
  ref.read(currentPageProvider.notifier).state++;
}

/// Fetches the next page of trending TV shows and updates the `trendingShowsProvider`.
///
/// This function reads the current page number from `currentPageProvider`, fetches
/// the trending TV shows for that page using the `fetchTrending` provider, and appends
/// the new shows to the existing list in `trendingShowsProvider`. It then increments
/// the current page number.
///
/// Parameters:
/// - [ref]: A `WidgetRef` used to read and update providers.
///
/// Throws:
/// - An error if the API call fails.
Future<void> fetchAndUpdateShows(WidgetRef ref) async {
  final currentPage = ref.read(currentPageProvider.notifier).state;
  final newShows = await ref.read(fetchTrendingProvider(
    mediaType: "tv",
    page: currentPage,
  ).future);

  ref
      .read(trendingShowsProvider.notifier)
      .update((state) => [...state, ...newShows]);
  ref.read(currentPageProvider.notifier).state++;
}
