import 'package:domain/domain.dart';

abstract class TMDBLocalDs {
  Future<ResultsModel?> getTrending(GetTrendingParams params);
  void cacheTrending<T>(T data, GetTrendingParams params);
}
