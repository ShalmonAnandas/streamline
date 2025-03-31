import 'package:domain/domain.dart';

abstract class TMDBLocalDs {
  Future<ResultsModel?> getTrending(GetTrendingParams params);
  void cacheTrending<T>(T data, GetTrendingParams params);
  Future<MediaDetailsModel?> getMediaDetails(GetMediaDetailsParams params);
  void cacheMediaDetails<T>(T data, GetMediaDetailsParams params);
}
