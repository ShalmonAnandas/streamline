import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

abstract class TMDBRepository {
  Future<Either<GenericError, List<MediaModel>?>> getTrending(
      GetTrendingParams params);
  Future<Either<GenericError, List<MediaModel>?>> searchTMDB(
      String searchQuery);
  Future<Either<GenericError, MediaDetailsModel>> getMediaDetails(
      GetMediaDetailsParams params);
}
