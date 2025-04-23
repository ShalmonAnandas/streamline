import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast_io.dart';

@injectable
class CacheService {
  DatabaseClient? _db;
  StoreRef? _store;
  late String keyExtension;

  CacheService() {
    keyExtension =
        "_${DateTime.now().day}_${DateTime.now().month}_${DateTime.now().year}";
  }

  Future<void> initializeCacheService() async {
    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);

    final dbPath = join(dir.path, 'tmdb_database.db');

    _db = await databaseFactoryIo.openDatabase(dbPath);

    _store = StoreRef.main();
    print("Cache Service Initialized");
  }

  void putInCache<T>(String key, T data) async {
    await _ensureInitialized();

    // Store the data directly if it's a List or Map
    if (data is List || data is Map) {
      _store!.record(key + keyExtension).put(_db!, data);
    } else if (data is ResultsModel) {
      _store!.record(key + keyExtension).put(_db!, data.toJson());
    } else if (data is MediaDetailsModel) {
      _store!.record(key + keyExtension).put(_db!, data.toJson());
    }
    // Add more type checks here if needed for other models
  }

  Future<T?> getFromCache<T>(String key) async {
    await _ensureInitialized();
    // The cast 'as T?' will handle retrieving the correct type (e.g., List, Map)
    final dynamic result = await _store!.record(key + keyExtension).get(_db!);
    if (result is T) {
      return result;
    }
    // Handle cases where the stored type might not match T exactly, e.g., List<dynamic> vs List<Map>
    // This basic implementation assumes the caller knows the expected type.
    // More robust error handling or type conversion might be needed depending on usage.
    try {
      return result as T?;
    } catch (e) {
      print(
          "CacheService: Type mismatch for key '$key'. Expected $T, got ${result?.runtimeType}. Error: $e");
      // Optionally clear the invalid cache entry
      // await _store!.record(key + keyExtension).delete(_db!);
      return null;
    }
  }

  Future<void> _ensureInitialized() async {
    if (_db == null) {
      await initializeCacheService();
    }
  }
}
