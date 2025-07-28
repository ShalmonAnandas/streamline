import 'package:dartz/dartz.dart';
import 'package:streamline/data/models/error_models/base_error.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_meta.dart';

abstract class CinemetaRepository {
  Future<bool> isCinemetaApiLive();
  Future<Either<List<Meta>, BaseError>> getTopMovies();
  Future<Either<List<Meta>, BaseError>> getPopularMovies();
  Future<Either<List<Meta>, BaseError>> getTopSeries();
  Future<Either<List<Meta>, BaseError>> getPopularSeries();
  Future<Either<List<Meta>, BaseError>> searchMovie(String query);
  Future<Either<List<Meta>, BaseError>> searchSeries(String query);
  Future<Either<Meta, BaseError>> getMovieDetails(String tmdbId);
  Future<Either<Meta, BaseError>> getSeriesDetails(String tmdbId);
}
