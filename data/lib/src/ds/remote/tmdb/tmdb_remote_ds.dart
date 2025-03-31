import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

abstract class TMDBRemoteDs {
  Future<Either<GenericError, ResultsModel>> getTrending(
      GetTrendingParams params);
  Future<Either<GenericError, ResultsModel>> searchTMDB(String searchQuery);
  Future<Either<GenericError, MediaDetailsModel>> getMediaDetails(
      GetMediaDetailsParams params);
}
