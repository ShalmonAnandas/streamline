import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/media/media_model.dart';
import 'package:domain/src/usecase/tmdb/get_imdb_id.dart';
import 'package:domain/src/usecase/tmdb/get_trending.dart';

abstract class TMDBRepository {
  Future<Either<GenericError, List<MediaModel>?>> getTrending(
      GetTrendingParams params);
  Future<Either<GenericError, List<MediaModel>?>> searchTMDB(
      String searchQuery);
  Future<Either<GenericError, List<MediaModel>?>> getIMDBID(
      GetIMDBIDParams params);
}
