import 'package:flutter/material.dart';
import 'package:streamline/src/features/home_screen/home_ui.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // key: AppService.appKey,
      // navigatorKey: AppService.navigatorKey,
      title: "StreamLine",
      theme: ThemeData.dark(),
      home: const Scaffold(body: HomeUI()),
    );
  }
}
