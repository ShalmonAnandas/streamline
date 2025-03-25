import 'package:domain/domain.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@injectable
class CacheService {
  Box? _box;
  late String keyExtension;

  CacheService() {
    keyExtension =
        "_${DateTime.now().day}_${DateTime.now().month}_${DateTime.now().year}";
  }

  Future<void> initializeCacheService() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('cache');
    print("Cache Service Initialized");
  }

  void putInCache<T>(String key, T data) async {
    await _ensureInitialized();
    if (data is ResultsModel) {
      _box!.put(key + keyExtension, data.toJson());
    }
  }

  Future<T?> getFromCache<T>(String key) async {
    await _ensureInitialized();
    return _box!.get(key + keyExtension);
  }

  Future<void> _ensureInitialized() async {
    if (_box == null) {
      await initializeCacheService();
    }
  }

  // Optional: Method to clear cache
  Future<void> clearCache() async {
    _ensureInitialized();
    await _box!.clear();
  }
}
