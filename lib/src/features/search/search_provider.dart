import 'package:domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart';

part 'search_provider.g.dart';

/// This file defines a Riverpod provider for performing a search operation on TMDB.
///
/// The `search` provider is an asynchronous function that interacts with the `TMDBRepository`
/// to fetch a list of media (e.g., movies or TV shows) based on a search query.

@riverpod
Future<List<MediaModel>?> search(
  Ref ref, {
  required String query, // The search query string used to search for media.
}) async {
  // Retrieves an instance of `TMDBRepository` using dependency injection.
  final tmdbRepo = getIt<TMDBRepository>();

  // Executes the search operation using the provided query.
  final response = await tmdbRepo.searchTMDB(query);

  // Processes the response:
  // - If an error occurs, it returns a `Future.error` with the error and stack trace.
  // - If successful, it returns the list of media models.
  return response.fold(
    (error) {
      return Future.error(error, StackTrace.current);
    },
    (resultsModel) {
      return resultsModel;
    },
  );
}
