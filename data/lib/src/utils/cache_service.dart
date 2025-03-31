import 'package:injectable/injectable.dart';
import 'package:json_annotation/json_annotation.dart';
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

    if (data is JsonSerializable) {
      _store!.record(key + keyExtension).put(_db!, data.toJson());
    } else {
      throw UnsupportedError('Unsupported data type: ${data.runtimeType}');
    }
  }

  Future<T?> getFromCache<T>(String key) async {
    await _ensureInitialized();
    return await _store!.record(key + keyExtension).get(_db!) as T?;
  }

  Future<void> _ensureInitialized() async {
    if (_db == null) {
      await initializeCacheService();
    }
  }
}
