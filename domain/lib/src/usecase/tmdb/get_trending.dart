import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/media/media_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';
import 'package:injectable/injectable.dart';

/// Use case for retrieving trending media from TMDB.
///
/// This use case interacts with the `TMDBRepository` to fetch a list of trending media
/// (e.g., movies or TV shows) based on the specified media type and page number.
///
/// Extends:
/// - `BaseUseCase<GenericError, GetTrendingParams, List<MediaModel>?>`
///   - `GenericError`: Represents the type of error that can occur during execution.
///   - `GetTrendingParams`: Represents the input parameters required for the use case.
///   - `List<MediaModel>?`: Represents the result of the use case, which is a list of media models or null.
@injectable
class GetTrending
    extends BaseUseCase<GenericError, GetTrendingParams, List<MediaModel>?> {
  final TMDBRepository _tmdbRepository;

  /// Constructor that initializes the use case with a `TMDBRepository` instance.
  GetTrending(this._tmdbRepository);

  /// Executes the use case with the provided parameters.
  ///
  /// Parameters:
  /// - `params`: An instance of `GetTrendingParams` containing the media type and page number.
  ///
  /// Returns:
  /// - A `Future` of `Either<GenericError, List<MediaModel>?>`:
  ///   - `Left<GenericError>`: Represents an error if the operation fails.
  ///   - `Right<List<MediaModel>?>`: Represents the result, which is a list of media models or null.
  @override
  Future<Either<GenericError, List<MediaModel>?>> execute(
      GetTrendingParams params) async {
    return await _tmdbRepository.getTrending(params);
  }
}

/// Parameters required for the `GetTrending` use case.
///
/// Contains the media type and page number needed to fetch the trending media.
class GetTrendingParams extends Params {
  /// Constructor for initializing the parameters.
  ///
  /// Parameters:
  /// - `mediaType`: The type of media (e.g., "movie", "tv").
  /// - `page`: The page number for pagination.
  GetTrendingParams(this.mediaType, this.page);

  final String mediaType; // The type of media (e.g., "movie", "tv").
  final int page; // The page number for pagination.

  /// Converts the parameters into a JSON-compatible map.
  ///
  /// Returns:
  /// - A `Map<String, dynamic>` containing the media type and page number.
  @override
  Map<String, dynamic> get toJson => {"media_type": mediaType, "page": page};
}
