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
  Future<Either<GenericError, ResultsModel>> getIMDBID(
      GetIMDBIDParams params) async {
    return await _tmdbRemoteDs.getIMDBID(params);
  }

  @override
  Future<Either<GenericError, ResultsModel>> getTrendingMovies() async {
    final result = await _tmdbLocalDs.getTrendingMovies();

    if (result == null) {
      final remoteResult = await _tmdbRemoteDs.getTrendingMovies();
      remoteResult.fold((GenericError e) => e,
          (ResultsModel m) => _tmdbLocalDs.cacheTrendingMovies<ResultsModel>(m));
      return remoteResult;
    } else {
      return right(result);
    }
  }

  @override
  Future<Either<GenericError, ResultsModel>> getTrendingShows() async {
    final result = await _tmdbLocalDs.getTrendingShows();

    if (result == null) {
      final remoteResult = await _tmdbRemoteDs.getTrendingShows();
      remoteResult.fold((GenericError e) => e,
          (ResultsModel m) => _tmdbLocalDs.cacheTrendingShows<ResultsModel>(m));
      return remoteResult;
    } else {
      return right(result);
    }
  }

  @override
  Future<Either<GenericError, ResultsModel>> searchTMDB(
      String searchQuery) async {
    return await _tmdbRemoteDs.searchTMDB(searchQuery);
  }
}
