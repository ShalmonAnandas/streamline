import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:streamline/data/datasource/remote/cinemeta_remote_datasource.dart';
import 'package:streamline/data/models/error_models/base_error.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_meta.dart';
import 'package:streamline/domain/repositories/cinemeta_repository.dart';

@Injectable(as: CinemetaRepository)
class CinemetaRepositoryImpl extends CinemetaRepository {
  final CinemetaRemoteDatasource _remoteDatasource;

  CinemetaRepositoryImpl(this._remoteDatasource);

  @override
  Future<bool> isCinemetaApiLive() async {
    try {
      await _remoteDatasource.isCinemetaApiLive();
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<Meta, BaseError>> getMovieDetails(String tmdbId) async {
    final response = await _remoteDatasource.getMovieDetails(tmdbId);

    return response.meta != null
        ? Left(response.meta!)
        : Right(BaseError('Failed to fetch movie details'));
  }

  @override
  Future<Either<List<Meta>, BaseError>> getPopularMovies() async {
    final response = await _remoteDatasource.getPopularMovies();
    return response.metas != null && response.metas!.isNotEmpty
        ? Left(response.metas!)
        : Right(BaseError('No popular movies found'));
  }

  @override
  Future<Either<List<Meta>, BaseError>> getPopularSeries() async {
    final response = await _remoteDatasource.getPopularSeries();
    return response.metas != null && response.metas!.isNotEmpty
        ? Left(response.metas!)
        : Right(BaseError('No popular series found'));
  }

  @override
  Future<Either<Meta, BaseError>> getSeriesDetails(String tmdbId) async {
    final response = await _remoteDatasource.getSeriesDetails(tmdbId);
    return response.meta != null
        ? Left(response.meta!)
        : Right(BaseError('Failed to fetch series details'));
  }

  @override
  Future<Either<List<Meta>, BaseError>> getTopMovies() async {
    final response = await _remoteDatasource.getTopMovies();
    return response.metas != null && response.metas!.isNotEmpty
        ? Left(response.metas!)
        : Right(BaseError('No top movies found'));
  }

  @override
  Future<Either<List<Meta>, BaseError>> getTopSeries() async {
    final response = await _remoteDatasource.getTopSeries();
    return response.metas != null && response.metas!.isNotEmpty
        ? Left(response.metas!)
        : Right(BaseError('No top series found'));
  }

  @override
  Future<Either<List<Meta>, BaseError>> searchMovie(String query) async {
    final response = await _remoteDatasource.searchMovie(query);
    return response.metas != null && response.metas!.isNotEmpty
        ? Left(response.metas!)
        : Right(BaseError('No movies found'));
  }

  @override
  Future<Either<List<Meta>, BaseError>> searchSeries(String query) async {
    final response = await _remoteDatasource.searchSeries(query);
    return response.metas != null && response.metas!.isNotEmpty
        ? Left(response.metas!)
        : Right(BaseError('No series found'));
  }
}
