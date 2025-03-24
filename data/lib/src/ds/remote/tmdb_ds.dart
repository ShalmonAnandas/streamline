import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

abstract class TMDBRemoteDs {
  Future<Either<NetworkError, ResultsModel>> getTrendingMovies();
  Future<Either<NetworkError, ResultsModel>> getTrendingShows();
  Future<Either<NetworkError, ResultsModel>> getIMDBID();
  Future<Either<NetworkError, ResultsModel>> searchTMDB();
}
