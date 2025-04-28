import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p; // Import path unconditionally with alias
import 'package:path_provider/path_provider.dart'
    if (dart.library.html) 'package:data/src/utils/web_path_provider_stub.dart'; // Conditional import for path_provider
import 'package:sembast/sembast.dart'; // Import base sembast package for Database, StoreRef etc.
// Import platform-specific factories with prefixes
import 'package:sembast/sembast_io.dart' as io;
import 'package:sembast_web/sembast_web.dart' as web;
import 'package:flutter/foundation.dart' show kIsWeb;

@injectable
class CacheService {
  Database? _db;
  StoreRef<String, dynamic>? _store; // Specify types for StoreRef
  late String keyExtension;

  CacheService() {
    keyExtension =
        "_${DateTime.now().day}_${DateTime.now().month}_${DateTime.now().year}";
  }

  Future<void> initializeCacheService() async {
    // Select the correct factory based on the platform using prefixes
    final databaseFactory =
        kIsWeb ? web.databaseFactoryWeb : io.databaseFactoryIo;

    String dbPath;
    if (kIsWeb) {
      // For web, Sembast uses IndexedDB, no specific path needed, just a name
      dbPath = 'tmdb_database.db';
    } else {
      // For mobile/desktop, get the application documents directory
      final dir = await getApplicationDocumentsDirectory();
      await dir.create(recursive: true);
      // Use the imported 'join' with the alias 'p'
      dbPath = p.join(dir.path, 'tmdb_database.db');
    }

    _db = await databaseFactory.openDatabase(dbPath);

    // Use StoreRef<String, dynamic>.main() for the main store
    _store = StoreRef<String, dynamic>.main();
    print("Cache Service Initialized for ${kIsWeb ? 'Web' : 'IO'}");
  }

  void putInCache<T>(String key, T data) async {
    await _ensureInitialized();

    // Store the data directly if it's a List or Map
    if (data is List || data is Map) {
      _store!.record(key + keyExtension).put(_db!, data);
    } else if (data is ResultsModel) {
      _store!.record(key + keyExtension).put(_db!, data.toJson());
    } else if (data is MediaDetailsModel) {
      // Assuming MediaDetailsModel does not need daily extension
      _store!.record(key).put(_db!, data.toJson());
    } else if (data is SeasonModel) {
      // Assuming SeasonModel does not need daily extension
      _store!.record(key).put(_db!, data.toJson());
    }
    // Add more type checks here if needed for other models
  }

  Future<T?> getFromCache<T>(String key) async {
    await _ensureInitialized();
    String cacheKey = key;
    // Adjust key extension logic based on type T
    // Check if the type T corresponds to models that use the daily extension
    // Using toString() comparison is brittle; consider a more robust type check if possible
    if (T.toString().contains('ResultsModel') || T == List || T == Map) {
      cacheKey = key + keyExtension;
    }
    final dynamic result = await _store!.record(cacheKey).get(_db!);

    if (result == null) {
      return null; // Return null if no data found
    }

    // Attempt to cast or handle type conversion
    if (result is T) {
      return result;
    }

    // Handle specific model deserialization if needed, e.g., from Map
    // This part depends heavily on how data is stored and expected
    // Example: If ResultsModel is stored as Map, deserialize it here
    // if (T == ResultsModel && result is Map<String, dynamic>) {
    //   try {
    //     return ResultsModel.fromJson(result) as T?;
    //   } catch (e) {
    //      print("CacheService: Failed to deserialize ResultsModel for key '$key'. Error: $e");
    //      return null;
    //   }
    // }
    // Similar handling for MediaDetailsModel, SeasonModel if stored as Map

    // Fallback: Try direct cast, log error if fails
    try {
      // This might fail if T is List<SomeModel> and result is List<dynamic> or List<Map>
      return result as T?;
    } catch (e) {
      print(
          "CacheService: Type mismatch or cast failed for key '$cacheKey'. Expected $T, got ${result?.runtimeType}. Error: $e");
      // Optionally clear the invalid cache entry
      // await _store!.record(cacheKey).delete(_db!);
      return null;
    }
  }

  Future<void> _ensureInitialized() async {
    if (_db == null) {
      await initializeCacheService();
    }
  }
}
