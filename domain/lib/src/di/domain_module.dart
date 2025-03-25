import 'package:domain/src/di/domain_module.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
  initializerName: 'initDomainModule',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> $initDomainModule(GetIt getIt) async {
  getIt.initDomainModule();
}
