import 'package:flutter/material.dart';
import 'package:streamline/core/service/app_service.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      key: AppService.appKey,
      navigatorKey: AppService.navigatorKey,
      title: "StreamLine",
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
