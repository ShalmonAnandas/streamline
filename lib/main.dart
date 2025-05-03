import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streamline/app_router.dart'; // Import the new router setup
import 'package:streamline/core/di/di.dart';
import 'package:flutter_web_plugins/url_strategy.dart'; // Import the package

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy(); // Use the path URL strategy
  initDependencyInjection();
  // Run the app with ProviderScope
  runApp(const ProviderScope(
      child: MyApp())); // Use MyApp which configures the router
}

// Create a new MyApp widget to hold the MaterialApp.router configuration
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use MaterialApp.router with the Qlevar Router delegate and parser
    return MaterialApp.router(
      routerDelegate: AppRoutes.routerDelegate,
      routeInformationParser: AppRoutes.routeInformationParser,
      // You might need to add theme, title, etc. here as needed
      title: 'Streamline', // Example title
      theme: ThemeData.dark(),
    );
  }
}

// Remove or comment out the old MainApp if it's no longer needed
/*
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router, // This uses the old go_router instance
    );
  }
}
*/
