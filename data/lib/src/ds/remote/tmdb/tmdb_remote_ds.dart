import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

abstract class TMDBRemoteDs {
  Future<Either<GenericError, ResultsModel>> getTrending(
      GetTrendingParams params);
  Future<Either<GenericError, ResultsModel>> searchTMDB(String searchQuery);
  Future<Either<GenericError, MediaDetailsModel>> getMediaDetails(
      GetMediaDetailsParams params);

  // Add this method
  Future<Either<GenericError, ResultsModel>> getRecommendations(
      GetRecommendationsParams params);

  Future<Either<GenericError, SeasonModel>> getSeasonDetails(
      GetSeasonDetailsParams params);
}
