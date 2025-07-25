import 'package:flutter/material.dart';
import 'package:streamline/di/main_di.dart';
import 'package:streamline/domain/usecases/cinemeta/cinemeta_api_live_check.dart';

void main() {
  $init();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    apiCall();
    super.initState();
  }

  void apiCall() async {
    print(await getIt<CinemetaApiLiveCheckUsecase>().call());
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
