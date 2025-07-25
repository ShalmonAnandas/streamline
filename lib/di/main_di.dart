import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'main_di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(initializerName: 'init')
Future<void> $init() async {
  getIt.init();
}
