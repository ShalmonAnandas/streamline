import 'package:domain/domain.dart';

abstract class TMDBLocalDs {
  Future<ResultsModel?> getTrending(GetTrendingParams params);
  void cacheTrending<T>(T data, GetTrendingParams params);
  Future<MediaDetailsModel?> getMediaDetails(GetMediaDetailsParams params);
  void cacheMediaDetails<T>(T data, GetMediaDetailsParams params);
  Future<ResultsModel?> getRecommendations(GetRecommendationsParams params);
  void cacheRecommendations<T>(T data, GetRecommendationsParams params);
  void saveMedia(MediaDetailsModel media);
  // Add method to retrieve the list of saved media
  Future<List<MediaDetailsModel>> getSavedMedia();

  // Add method to check if media is saved
  Future<bool> isMediaSaved(int mediaId);

  // Add method signature to remove saved media
  Future<void> removeSavedMedia(int mediaId);
}
