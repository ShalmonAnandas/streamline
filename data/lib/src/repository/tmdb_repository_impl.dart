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
  Future<Either<GenericError, List<MediaModel>?>> getIMDBID(
      GetIMDBIDParams params) async {
    final results = await _tmdbRemoteDs.getIMDBID(params);

    return results.fold((GenericError error) => left(error),
        (ResultsModel results) {
      return right(results.results);
    });
  }

  @override
  Future<Either<GenericError, List<MediaModel>?>> getTrending(
      GetTrendingParams params) async {
    final result = await _tmdbLocalDs.getTrending(params);

    if (result == null) {
      final remoteResult = await _tmdbRemoteDs.getTrending(params);
      remoteResult.fold(
          (GenericError e) => e,
          (ResultsModel m) =>
              _tmdbLocalDs.cacheTrending<ResultsModel>(m, params));
      return remoteResult.fold(
          (GenericError e) => left(e), (ResultsModel m) => right(m.results));
    } else {
      return right(result.results);
    }
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
}
