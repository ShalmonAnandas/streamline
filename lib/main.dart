import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streamline/core/di/di.dart';
import 'package:streamline/src/main_app/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencyInjection();
  debugRepaintRainbowEnabled = true;
  runApp(ProviderScope(child: const MainApp()));
}
