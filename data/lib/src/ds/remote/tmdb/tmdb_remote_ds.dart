import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

abstract class TMDBRemoteDs {
  Future<Either<GenericError, ResultsModel>> getTrending(
      GetTrendingParams params);
  Future<Either<GenericError, ResultsModel>> getIMDBID(GetIMDBIDParams params);
  Future<Either<GenericError, ResultsModel>> searchTMDB(String searchQuery);
}
