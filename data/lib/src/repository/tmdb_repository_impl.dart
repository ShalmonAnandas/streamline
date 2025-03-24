

import 'package:dartz/dartz.dart';
import 'package:data/src/ds/local/tmdb_ds.dart';
import 'package:data/src/ds/remote/tmdb_ds.dart';
import 'package:domain/domain.dart';

class TMDBRepositoryImpl extends TMDBRepository {
  TMDBRepositoryImpl(this._tmdbLocalDs, this._tmdbRemoteDs);

  final TMDBLocalDs _tmdbLocalDs;
  final TMDBRemoteDs _tmdbRemoteDs;

  @override
  Future<Either<NetworkError, ResultsModel>> getIMDBID(String p) {
    // TODO: implement getIMDBID
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkError, ResultsModel>> getTrendingMovies() async {
    return _tmdbRemoteDs.getTrendingMovies();
  }

  @override
  Future<Either<NetworkError, ResultsModel>> getTrendingTv() {
    // TODO: implement getTrendingTv
    throw UnimplementedError();
  }

  @override
  Future<Either<NetworkError, ResultsModel>> searchTMDB(String p) {
    // TODO: implement searchTMDB
    throw UnimplementedError();
  }

}