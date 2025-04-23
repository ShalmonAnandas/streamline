import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

abstract class TMDBRepository {
  Future<Either<GenericError, List<MediaModel>?>> getTrending(
      GetTrendingParams params);
  Future<Either<GenericError, List<MediaModel>?>> searchTMDB(
      String searchQuery);
  Future<Either<GenericError, MediaDetailsModel>> getMediaDetails(
      GetMediaDetailsParams params);
  Future<Either<GenericError, List<MediaModel>?>> getRecommendations(
      GetRecommendationsParams params);

  // Add this method signature
  void saveMedia(MediaDetailsModel media);

  // Add method signature to retrieve the list of saved media
  Future<List<MediaDetailsModel>> getSavedMedia();

  // Add method signature to check if media is saved
  Future<bool> isMediaSaved(int mediaId);

  // Add method signature to remove saved media
  Future<void> removeSavedMedia(int mediaId);
}
