import 'package:dartz/dartz.dart';
import 'package:data/src/ds/remote/tmdb/tmdb_remote_ds.dart';
import 'package:data/src/utils/api_constants.dart';
import 'package:data/src/utils/api_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBRemoteDs)
class TMDBRemoteDSImpl extends TMDBRemoteDs with ApiConstants {
  TMDBRemoteDSImpl(this._apiClient);

  final APIClient _apiClient;

  @override
  Future<Either<GenericError, ResultsModel>> getIMDBID(
      GetIMDBIDParams params) async {
    final response = await _apiClient.getRequest(
        url: tmdbToImdbConversionURL(params), headers: tmdbHeaders);
    return _apiClient.apiSafeGuard<ResultsModel>(
        response, ResultsModel.fromJson);
  }

  @override
  Future<Either<GenericError, ResultsModel>> getTrendingMovies() async {
    final response = await _apiClient.getRequest(
        url: tmdbTrendingMoviesUrl, headers: tmdbHeaders);

    return _apiClient.apiSafeGuard<ResultsModel>(
        response, ResultsModel.fromJson);
  }

  @override
  Future<Either<GenericError, ResultsModel>> getTrendingShows() async {
    final response = await _apiClient.getRequest(
        url: tmdbTrendingShowsURL, headers: tmdbHeaders);

    return _apiClient.apiSafeGuard<ResultsModel>(
        response, ResultsModel.fromJson);
  }

  @override
  Future<Either<GenericError, ResultsModel>> searchTMDB(
    String searchQuery,
  ) async {
    final response = await _apiClient.getRequest(
        url: tmdbSearchURL + searchQuery, headers: tmdbHeaders);

    return _apiClient.apiSafeGuard<ResultsModel>(
        response, ResultsModel.fromJson);
  }
}
