import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/media/media_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';
import 'package:injectable/injectable.dart';

/// Use case for searching media on TMDB.
///
/// This use case interacts with the `TMDBRepository` to perform a search query
/// and retrieve a list of media (e.g., movies or TV shows) that match the search criteria.
///
/// Extends:
/// - `BaseUseCase<GenericError, SearchTmdbParams, List<MediaModel>?>`
///   - `GenericError`: Represents the type of error that can occur during execution.
///   - `SearchTmdbParams`: Represents the input parameters required for the use case.
///   - `List<MediaModel>?`: Represents the result of the use case, which is a list of media models or null.
@injectable
class SearchTmdb
    extends BaseUseCase<GenericError, SearchTmdbParams, List<MediaModel>?> {
  final TMDBRepository _tmdbRepository;

  /// Constructor that initializes the use case with a `TMDBRepository` instance.
  SearchTmdb(this._tmdbRepository);

  /// Executes the use case with the provided parameters.
  ///
  /// Parameters:
  /// - `params`: An instance of `SearchTmdbParams` containing the search query.
  ///
  /// Returns:
  /// - A `Future` of `Either<GenericError, List<MediaModel>?>`:
  ///   - `Left<GenericError>`: Represents an error if the operation fails.
  ///   - `Right<List<MediaModel>?>`: Represents the result, which is a list of media models or null.
  @override
  Future<Either<GenericError, List<MediaModel>?>> execute(
      SearchTmdbParams params) {
    return _tmdbRepository.searchTMDB(params.searchQuery);
  }
}

/// Parameters required for the `SearchTmdb` use case.
///
/// Contains the search query needed to perform the search operation.
class SearchTmdbParams extends Params {
  /// Constructor for initializing the parameters.
  ///
  /// Parameters:
  /// - `searchQuery`: The search query string used to search for media.
  SearchTmdbParams(this.searchQuery);

  final String searchQuery; // The search query string.

  /// Converts the parameters into a JSON-compatible map.
  ///
  /// Returns:
  /// - A `Map<String, dynamic>` containing the search query.
  @override
  Map<String, dynamic> get toJson => {"search_query": searchQuery};
}
