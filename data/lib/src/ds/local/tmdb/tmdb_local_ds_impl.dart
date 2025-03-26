import 'package:data/src/ds/local/tmdb/tmdb_local_ds.dart';
import 'package:data/src/utils/cache_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBLocalDs)
class TMDBLocalDsImpl extends TMDBLocalDs {
  final CacheService _cacheService;

  TMDBLocalDsImpl(this._cacheService);

  @override
  Future<ResultsModel?> getTrendingMovies() async {
    final cachedData = await _cacheService.getFromCache<Map>("trending_movies");

    if (cachedData != null) {
      return ResultsModel.fromJson(Map<String, dynamic>.from(cachedData));
    } else {
      return null;
    }
  }

  @override
  Future<ResultsModel?> getTrendingShows() async {
    final cachedData = await _cacheService
        .getFromCache<Map<String, dynamic>>("trending_shows");

    if (cachedData != null) {
      return ResultsModel.fromJson(Map<String, dynamic>.from(cachedData));
    } else {
      return null;
    }
  }

  @override
  void cacheTrendingMovies<T>(T data) {
    _cacheService.putInCache<T>("trending_movies", data);
  }

  @override
  void cacheTrendingShows<T>(T data) {
    _cacheService.putInCache<T>("trending_shows", data);
  }
}
