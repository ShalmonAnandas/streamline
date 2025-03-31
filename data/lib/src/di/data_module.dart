import 'package:data/src/utils/api_constants.dart';
import 'package:data/src/utils/cache_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:data/src/di/data_module.config.dart';

@InjectableInit(
  initializerName: 'initDataModule',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> $initDataModule(GetIt getIt) async {
  getIt.initDataModule();
  await ApiConstants.remoteConfig.fetchAndActivate();
  await getIt<CacheService>().initializeCacheService();
}
