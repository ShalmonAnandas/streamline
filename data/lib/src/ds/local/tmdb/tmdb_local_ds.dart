import 'package:domain/domain.dart';

abstract class TMDBLocalDs {
  Future<ResultsModel?> getTrending(GetTrendingParams params);
  void cacheTrending<T>(T data, GetTrendingParams params);
  Future<MediaDetailsModel?> getMediaDetails(GetMediaDetailsParams params);
  void cacheMediaDetails<T>(T data, GetMediaDetailsParams params);
  Future<ResultsModel?> getRecommendations(GetRecommendationsParams params);
  void cacheRecommendations<T>(T data, GetRecommendationsParams params);
  void saveMedia(MediaDetailsModel media);
  Future<List<MediaDetailsModel>> getSavedMedia();
  Future<bool> isMediaSaved(int mediaId);
  Future<void> removeSavedMedia(int mediaId);
  void cacheSeasonDetails<T>(T data, GetSeasonDetailsParams params);
  Future<SeasonModel?> getSeasonDetails(GetSeasonDetailsParams params);
}
