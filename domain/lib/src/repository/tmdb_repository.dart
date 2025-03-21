import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/results/results_model.dart';
import 'package:domain/src/usecase/base/params.dart';

abstract class TMDBRepository {
  Future<Either<NetworkError, ResultsModel>> getTrendingMovies();
  Future<Either<NetworkError, ResultsModel>> getTrendingTv();
  Future<Either<NetworkError, ResultsModel>> searchTMDB(Params p);
  Future<Either<NetworkError, ResultsModel>> getIMDBID(Params p);
}
