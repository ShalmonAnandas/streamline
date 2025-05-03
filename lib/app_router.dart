import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

// Import screens using deferred loading
import 'package:streamline/src/features/movie_mode/home/home_ui.dart'
    deferred as home_ui;
import 'package:streamline/src/features/movie_mode/home/trending_ui.dart'
    deferred as trending_ui;
import 'package:streamline/src/features/movie_mode/library/library_ui.dart'
    deferred as library_ui;
import 'package:streamline/src/features/movie_mode/media/media_ui.dart'
    deferred as media_ui;
import 'package:streamline/src/features/movie_mode/search/search_ui.dart'
    deferred as search_ui;
import 'package:streamline/src/features/profile/profile_ui.dart'
    deferred as profile_ui;

// Define route names as constants for better maintainability
class AppRoutes {
  static const home = '/';
  static const search = '/search';
  static const library = '/library';
  static const profile = '/profile';
  static const mediaDetails = '/media/:mediaType/:id'; // Route with parameters
  static const trending = '/trending/:mediaType'; // Add route for trending

  static final routes = <QRoute>[
    QRoute(
      path: home,
      name: 'home',
      builder: () => home_ui.HomeUI(),
      middleware: [DeferredLoader(home_ui.loadLibrary)],
    ),
    QRoute(
      path: search,
      name: 'search',
      builder: () => search_ui.SearchUi(),
      middleware: [DeferredLoader(search_ui.loadLibrary)],
    ),
    QRoute(
      path: library,
      name: 'library',
      builder: () => library_ui.LibraryScreen(),
      middleware: [DeferredLoader(library_ui.loadLibrary)],
    ),
    QRoute(
      path: profile,
      name: 'profile',
      builder: () => profile_ui.ProfileScreen(),
      middleware: [DeferredLoader(profile_ui.loadLibrary)],
    ),
    QRoute(
      path: trending,
      name: 'trending',
      builder: () {
        // Correct parameter access using .value and casting
        final mediaType = QR.params['mediaType']?.value as String?;
        if (mediaType == null) {
          return Scaffold(body: Center(child: Text('Missing media type')));
        }
        return trending_ui.TrendingUI(mediaType: mediaType);
      },
      middleware: [DeferredLoader(trending_ui.loadLibrary)],
    ),
    QRoute(
      path: mediaDetails,
      name: 'mediaDetails',
      builder: () {
        // Correct parameter access using .value and casting
        final mediaType = QR.params['mediaType']?.value as String?;
        final idString = QR.params['id']?.value as String?;
        if (mediaType == null || idString == null) {
          return Scaffold(
              body: Center(child: Text('Missing media type or ID')));
        }
        // Use int.tryParse for safe parsing
        final id = int.tryParse(idString);
        if (id == null) {
          return Scaffold(body: Center(child: Text('Invalid media ID')));
        }
        return media_ui.MediaUI(mediaType, id);
      },
      middleware: [DeferredLoader(media_ui.loadLibrary)],
    ),
    // Add the not found route at the end using a catch-all path
    QRoute(
      path: '/*',
      builder: () => Scaffold(
        body: Center(child: Text('Page not found')),
      ),
    ),
  ];

  static final routerDelegate = QRouterDelegate(
    routes,
    initPath: AppRoutes.home,
    // Remove notFoundPage, handled by '/*' route
  );

  static final routeInformationParser = QRouteInformationParser();
}

class DeferredLoader extends QMiddleware {
  final Future<dynamic> Function() loader;

  DeferredLoader(this.loader);

  @override
  Future onEnter() async {
    await loader();
    if (kDebugMode) print('users loaded');
  }
}
