import 'package:flutter/material.dart';

class AppService {
  const AppService._();

  static GlobalKey<NavigatorState>? get navigatorKey =>
      GlobalKey(debugLabel: 'my-app-key');

  static GlobalKey<State>? get appKey =>
      GlobalKey(debugLabel: 'appKey-app-key');
}
