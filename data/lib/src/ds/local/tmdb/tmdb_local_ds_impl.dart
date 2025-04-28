import 'package:data/src/ds/local/tmdb/tmdb_local_ds.dart';
import 'package:data/src/utils/cache_service.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TMDBLocalDs)
class TMDBLocalDsImpl extends TMDBLocalDs {
  final CacheService _cacheService;
  // Define a constant key for the saved media list
  static const String _savedMediaCacheKey = "saved_media_list";

  TMDBLocalDsImpl(this._cacheService);

  @override
  Future<ResultsModel?> getTrending(GetTrendingParams params) async {
    // Use Map<String, dynamic> for type safety with fromJson
    final cachedData = await _cacheService.getFromCache<Map<String, dynamic>>(
        "trending_${params.mediaType}_${params.page}");

    if (cachedData != null) {
      // No need for explicit cast here if getFromCache returns the correct type
      return ResultsModel.fromJson(cachedData);
    } else {
      return null;
    }
  }

  @override
  void cacheTrending<T>(T data, GetTrendingParams params) {
    // Ensure data is ResultsModel before calling toJson
    if (data is ResultsModel) {
      _cacheService.putInCache<ResultsModel>(
          "trending_${params.mediaType}_${params.page}", data);
    }
    // Handle other types if necessary, or throw an error
  }

  @override
  Future<MediaDetailsModel?> getMediaDetails(
      GetMediaDetailsParams params) async {
    // Use Map<String, dynamic> for type safety with fromJson
    final cachedData = await _cacheService.getFromCache<Map<String, dynamic>>(
        "media_details_${params.mediaType}_${params.id}");

    if (cachedData != null) {
      // No need for explicit cast here if getFromCache returns the correct type
      return MediaDetailsModel.fromJson(cachedData);
    } else {
      return null;
    }
  }

  @override
  void cacheMediaDetails<T>(T data, GetMediaDetailsParams params) {
    // Ensure data is MediaDetailsModel before calling toJson
    if (data is MediaDetailsModel) {
      _cacheService.putInCache<MediaDetailsModel>(
          "media_details_${params.mediaType}_${params.id}", data);
    }
    // Handle other types if necessary, or throw an error
  }

  @override
  Future<ResultsModel?> getRecommendations(
      GetRecommendationsParams params) async {
    // Use Map<String, dynamic> for type safety with fromJson
    final cachedData =
        await _cacheService.getFromCache<Map<String, dynamic>>(params.cacheKey);
    if (cachedData != null) {
      // No need for explicit cast here if getFromCache returns the correct type
      return ResultsModel.fromJson(cachedData);
    } else {
      return null;
    }
  }

  @override
  void cacheRecommendations<T>(T data, GetRecommendationsParams params) {
    // Ensure data is ResultsModel before calling toJson
    if (data is ResultsModel) {
      _cacheService.putInCache<ResultsModel>(params.cacheKey, data);
    }
    // Handle other types if necessary, or throw an error
  }

  // Implement the saveMedia method to store items in a list
  @override
  Future<void> saveMedia(MediaDetailsModel media) async {
    // Fetch the current list of saved media maps
    final cachedList =
        await _cacheService.getFromCache<List>(_savedMediaCacheKey);

    // Sembast might store List<dynamic>, ensure it's List<Map<String, dynamic>>
    final List<Map<String, dynamic>> currentList = cachedList
            ?.map((item) => Map<String, dynamic>.from(item as Map))
            .toList() ??
        [];

    final mediaJson = media.toJson();

    // Check if the media (by id) is already in the list to avoid duplicates
    final bool alreadyExists =
        currentList.any((item) => item['id'] == mediaJson['id']);

    if (!alreadyExists) {
      currentList.add(mediaJson);
      // Save the updated list back to the cache
      // Explicitly type the list being saved
      _cacheService.putInCache<List<Map<String, dynamic>>>(
          _savedMediaCacheKey, currentList);
    }
  }

  // Add method to retrieve the list of saved media
  @override
  Future<List<MediaDetailsModel>> getSavedMedia() async {
    // Fetch the list of maps
    final cachedList =
        await _cacheService.getFromCache<List>(_savedMediaCacheKey);

    if (cachedList != null) {
      // Convert the list of maps back to a list of MediaDetailsModel objects
      try {
        return cachedList
            .map((item) => MediaDetailsModel.fromJson(
                Map<String, dynamic>.from(item as Map)))
            .toList();
      } catch (e) {
        print("Error deserializing saved media list: $e");
        // Optionally clear the corrupted cache entry
        // await _cacheService.deleteFromCache(_savedMediaCacheKey);
        return []; // Return empty list on error
      }
    } else {
      return []; // Return empty list if nothing is cached
    }
  }

  // Add method to check if media is saved
  @override
  Future<bool> isMediaSaved(int mediaId) async {
    // Fetch the list of maps
    final cachedList =
        await _cacheService.getFromCache<List>(_savedMediaCacheKey);

    if (cachedList != null) {
      // Sembast might store List<dynamic>, ensure it's List<Map<String, dynamic>>
      final List<Map<String, dynamic>> currentList = cachedList
          .map((item) => Map<String, dynamic>.from(item as Map))
          .toList();

      // Check if any item in the list matches the given mediaId
      return currentList.any((item) => item['id'] == mediaId);
    } else {
      // If the cache is empty, the media is not saved
      return false;
    }
  }

  // Implement the removeSavedMedia method
  @override
  Future<void> removeSavedMedia(int mediaId) async {
    // Fetch the current list of saved media maps
    final cachedList =
        await _cacheService.getFromCache<List>(_savedMediaCacheKey);

    if (cachedList != null) {
      // Sembast might store List<dynamic>, ensure it's List<Map<String, dynamic>>
      final List<Map<String, dynamic>> currentList = cachedList
          .map((item) => Map<String, dynamic>.from(item as Map))
          .toList();

      // Remove the item with the matching mediaId
      currentList.removeWhere((item) => item['id'] == mediaId);

      // Save the updated list back to the cache
      // Explicitly type the list being saved
      _cacheService.putInCache<List<Map<String, dynamic>>>(
          _savedMediaCacheKey, currentList);
    }
    // If the list is null or empty, there's nothing to remove
  }

  @override
  void cacheSeasonDetails<T>(T data, GetSeasonDetailsParams params) async {
    final cacheKey = "season_details_${params.id}_${params.seasonNumber}";
    if (data is SeasonModel) {
      _cacheService.putInCache<SeasonModel>(cacheKey, data);
    }
  }

  @override
  Future<SeasonModel?> getSeasonDetails(GetSeasonDetailsParams params) async {
    final cacheKey = "season_details_${params.id}_${params.seasonNumber}";
    final cachedData =
        await _cacheService.getFromCache<Map<String, dynamic>>(cacheKey);
    if (cachedData != null) {
      return SeasonModel.fromJson(cachedData);
    } else {
      return null;
    }
  }
}
