import 'package:data/src/ds/local/tmdb/tmdb_local_ds.dart';
import 'package:data/src/utils/cache_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBLocalDs)
class TMDBLocalDsImpl extends TMDBLocalDs {
  final CacheService _cacheService;

  TMDBLocalDsImpl(this._cacheService);

  @override
  Future<ResultsModel?> getTrending(GetTrendingParams params) async {
    final cachedData = await _cacheService
        .getFromCache<Map>("trending_${params.mediaType}_${params.page}");

    if (cachedData != null) {
      return ResultsModel.fromJson(Map<String, dynamic>.from(cachedData));
    } else {
      return null;
    }
  }

  @override
  void cacheTrending<T>(T data, GetTrendingParams params) {
    _cacheService.putInCache<T>(
        "trending_${params.mediaType}_${params.page}", data);
  }

  @override
  Future<MediaDetailsModel?> getMediaDetails(
      GetMediaDetailsParams params) async {
    final cachedData = await _cacheService
        .getFromCache<Map>("media_details_${params.mediaType}_${params.id}");

    if (cachedData != null) {
      return MediaDetailsModel.fromJson(Map<String, dynamic>.from(cachedData));
    } else {
      return null;
    }
  }

  @override
  void cacheMediaDetails<T>(T data, GetMediaDetailsParams params) {
    _cacheService.putInCache<T>(
        "media_details_${params.mediaType}_${params.id}", data);
  }
}
