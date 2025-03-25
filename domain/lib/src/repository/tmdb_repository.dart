import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/results/results_model.dart';
import 'package:domain/src/usecase/tmdb/get_imdb_id.dart';

abstract class TMDBRepository {
  Future<Either<GenericError, ResultsModel>> getTrendingMovies();
  Future<Either<GenericError, ResultsModel>> getTrendingShows();
  Future<Either<GenericError, ResultsModel>> searchTMDB(String searchQuery);
  Future<Either<GenericError, ResultsModel>> getIMDBID(GetIMDBIDParams params);
}
