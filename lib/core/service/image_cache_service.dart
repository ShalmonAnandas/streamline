import 'dart:async';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'dart:developer' as developer;
// Consider adding 'collection' package for LruMap if memory becomes an issue
// import 'dart:collection';

class ImageCacheService {
  // Using simple Maps for now. Consider LRUMap for better memory management.
  // final Map<String, Uint8List> _memoryCache = LruMap(maximumSize: 50);
  final Map<String, Uint8List> _memoryCache = {};
  final Map<String, Future<Uint8List>> _fetchFutures = {};

  static final ImageCacheService _instance = ImageCacheService._internal();
  factory ImageCacheService() => _instance;
  ImageCacheService._internal();

  /// Returns the cached image data immediately if available in memory.
  Uint8List? getFromMemoryCache(String url) {
    return _memoryCache[url];
  }

  /// Fetches an image, utilizing the cache.
  /// Returns a Future that completes with the image data.
  Future<Uint8List> getImage(String url) async {
    if (_memoryCache.containsKey(url)) {
      return _memoryCache[url]!;
    }

    if (_fetchFutures.containsKey(url)) {
      // A fetch for this URL is already in progress, wait for it.
      return await _fetchFutures[url]!;
    }

    // Start a new fetch.
    final completer = Completer<Uint8List>();
    _fetchFutures[url] = completer.future;

    try {
      developer.log('Fetching image: $url', name: 'ImageCacheService');
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final bytes = response.bodyBytes;
        _memoryCache[url] = bytes; // Store in memory cache
        developer.log('Cached image: $url (${bytes.lengthInBytes} bytes)',
            name: 'ImageCacheService');
        completer.complete(bytes);
      } else {
        developer.log('Failed to load image ($url): ${response.statusCode}',
            name: 'ImageCacheService', error: 'HTTP Error');
        completer.completeError(http.ClientException(
            'Failed to load image: ${response.statusCode}'));
      }
    } catch (e, s) {
      developer.log('Failed to load image ($url): $e',
          name: 'ImageCacheService', error: e, stackTrace: s);
      completer.completeError(e);
    } finally {
      // Remove the future once completed (success or error)
      // so subsequent calls will either hit memory cache or retry fetch.
      _fetchFutures.remove(url);
    }

    return completer.future;
  }

  /// Initiates fetching for an image URL if it's not already cached
  /// or being fetched. Does not wait for the fetch to complete.
  void preloadImage(String url) {
    if (!_memoryCache.containsKey(url) && !_fetchFutures.containsKey(url)) {
      developer.log('Preloading image: $url', name: 'ImageCacheService');
      // Call getImage but don't await it. Handle errors silently or log them.
      getImage(url).catchError((e) {
        developer.log('Preload failed for $url: $e',
            name: 'ImageCacheService', error: e);
        // Errors are logged within getImage, no need to re-throw here.
        return Uint8List(0);
      });
    } else {
      // developer.log('Image already cached or preloading: $url', name: 'ImageCacheService');
    }
  }
}
