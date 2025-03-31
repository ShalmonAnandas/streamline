import 'package:dartz/dartz.dart';
import 'package:data/src/ds/local/tmdb/tmdb_local_ds.dart';
import 'package:data/src/ds/remote/tmdb/tmdb_remote_ds.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBRepository)
class TMDBRepositoryImpl extends TMDBRepository {
  TMDBRepositoryImpl(this._tmdbLocalDs, this._tmdbRemoteDs);

  final TMDBLocalDs _tmdbLocalDs;
  final TMDBRemoteDs _tmdbRemoteDs;

  @override
  Future<Either<GenericError, List<MediaModel>?>> getTrending(
      GetTrendingParams params) async {
    final localResult = await _tmdbLocalDs.getTrending(params);

    if (localResult != null) {
      return right(localResult.results);
    }

    final remoteResult = await _tmdbRemoteDs.getTrending(params);

    return remoteResult.fold(
      (error) => left(error),
      (results) {
        _tmdbLocalDs.cacheTrending<ResultsModel>(results, params);
        return right(results.results);
      },
    );
  }

  @override
  Future<Either<GenericError, List<MediaModel>?>> searchTMDB(
      String searchQuery) async {
    final results = await _tmdbRemoteDs.searchTMDB(searchQuery);

    return results.fold((GenericError error) => left(error),
        (ResultsModel results) {
      return right(results.results);
    });
  }

  @override
  Future<Either<GenericError, MediaDetailsModel>> getMediaDetails(
      GetMediaDetailsParams params) async {
    final localResult = await _tmdbLocalDs.getMediaDetails(params);

    if (localResult != null) {
      return right(localResult);
    }

    final remoteResult = await _tmdbRemoteDs.getMediaDetails(params);

    return remoteResult.map((mediaDetails) {
      _tmdbLocalDs.cacheMediaDetails<MediaDetailsModel>(mediaDetails, params);
      return mediaDetails;
    });
  }
}
