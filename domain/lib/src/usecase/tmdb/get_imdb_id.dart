import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/media/media_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';
import 'package:injectable/injectable.dart';

/// Use case for retrieving the IMDb ID for a given TMDB ID and media type.
///
/// This use case interacts with the `TMDBRepository` to fetch the IMDb ID
/// associated with a specific TMDB ID and media type (e.g., movie or TV show).
///
/// Extends:
/// - `BaseUseCase<GenericError, GetIMDBIDParams, List<MediaModel>?>`
///   - `GenericError`: Represents the type of error that can occur during execution.
///   - `GetIMDBIDParams`: Represents the input parameters required for the use case.
///   - `List<MediaModel>?`: Represents the result of the use case, which is a list of media models or null.
@injectable
class GetIMDBID
    extends BaseUseCase<GenericError, GetIMDBIDParams, List<MediaModel>?> {
  final TMDBRepository _tmdbRepository;

  /// Constructor that initializes the use case with a `TMDBRepository` instance.
  GetIMDBID(this._tmdbRepository);

  /// Executes the use case with the provided parameters.
  ///
  /// Parameters:
  /// - `params`: An instance of `GetIMDBIDParams` containing the TMDB ID and media type.
  ///
  /// Returns:
  /// - A `Future` of `Either<GenericError, List<MediaModel>?>`:
  ///   - `Left<GenericError>`: Represents an error if the operation fails.
  ///   - `Right<List<MediaModel>?>`: Represents the result, which is a list of media models or null.
  @override
  Future<Either<GenericError, List<MediaModel>?>> execute(
      GetIMDBIDParams params) {
    return _tmdbRepository.getIMDBID(params);
  }
}

/// Parameters required for the `GetIMDBID` use case.
///
/// Contains the TMDB ID and media type needed to fetch the IMDb ID.
class GetIMDBIDParams extends Params {
  final String tmdbID; // The TMDB ID of the media.
  final String mediaType; // The type of media (e.g., "movie", "tv").

  /// Constructor for initializing the parameters.
  ///
  /// Parameters:
  /// - `tmdbID`: The TMDB ID of the media.
  /// - `mediaType`: The type of media (e.g., "movie", "tv").
  GetIMDBIDParams({required this.tmdbID, required this.mediaType});

  /// Converts the parameters into a JSON-compatible map.
  ///
  /// Throws:
  /// - `UnimplementedError`: This method is not implemented for this class.
  @override
  Map<String, dynamic> get toJson => throw UnimplementedError();
}
