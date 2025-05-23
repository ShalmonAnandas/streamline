import 'package:dartz/dartz.dart';
import 'package:data/src/ds/remote/tmdb/tmdb_api_constants.dart';
import 'package:data/src/ds/remote/tmdb/tmdb_remote_ds.dart';
import 'package:data/src/utils/api_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBRemoteDs)
class TMDBRemoteDSImpl extends TMDBRemoteDs with TMDBApiConstants {
  TMDBRemoteDSImpl(this._apiClient);

  final APIClient _apiClient;

  @override
  Future<Either<GenericError, ResultsModel>> getTrending(
      GetTrendingParams params) async {
    final response = await _apiClient.getRequest(
      url: tmdbTrendingUrl(params.mediaType, params.page),
    );

    return _apiClient.apiSafeGuard<ResultsModel>(
        response, ResultsModel.fromJson);
  }

  @override
  Future<Either<GenericError, ResultsModel>> searchTMDB(
    String searchQuery,
  ) async {
    final response = await _apiClient.getRequest(
      url: '$tmdbSearchURL$searchQuery',
    );

    final resultModel = _apiClient.apiSafeGuard<ResultsModel>(
      response,
      ResultsModel.fromJson,
    );

    return resultModel.map((model) {
      model.results?.removeWhere((element) => element.mediaType == "person");
      return model;
    });
  }

  @override
  Future<Either<GenericError, MediaDetailsModel>> getMediaDetails(
      GetMediaDetailsParams params) async {
    final response = await _apiClient.getRequest(
      url: tmdbMediaDetailsUrl(
        params.mediaType,
        params.id,
      ),
    );

    return _apiClient.apiSafeGuard<MediaDetailsModel>(
        response, MediaDetailsModel.fromJson);
  }

  // Add this implementation
  @override
  Future<Either<GenericError, ResultsModel>> getRecommendations(
      GetRecommendationsParams params) async {
    final response = await _apiClient.getRequest(
      url: tmdbRecommendationsUrl(
          params.movieId, params.language, params.page, params.mediaType),
    );

    return _apiClient.apiSafeGuard<ResultsModel>(
        response, ResultsModel.fromJson);
  }

  @override
  Future<Either<GenericError, SeasonModel>> getSeasonDetails(
      GetSeasonDetailsParams params) async {
    final response = await _apiClient.getRequest(
      url: tmdbSeasonDetailsUrl(params.id, params.seasonNumber),
    );

    return _apiClient.apiSafeGuard<SeasonModel>(response, SeasonModel.fromJson);
  }
}
