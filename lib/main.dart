import 'package:flutter/material.dart';
import 'package:streamline/di/main_di.dart';
import 'package:streamline/presentation/pages/api_result_page.dart';
import 'package:streamline/presentation/models/api_endpoint.dart';

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
  final List<ApiEndpoint> endpoints = [
    ApiEndpoint(
      title: 'API Live Check',
      subtitle: 'Check if Cinemeta API is live',
      type: ApiType.liveCheck,
    ),
    ApiEndpoint(
      title: 'Top Movies',
      subtitle: 'Get list of top movies',
      type: ApiType.topMovies,
    ),
    ApiEndpoint(
      title: 'Popular Movies',
      subtitle: 'Get list of popular movies',
      type: ApiType.popularMovies,
    ),
    ApiEndpoint(
      title: 'Top Series',
      subtitle: 'Get list of top series',
      type: ApiType.topSeries,
    ),
    ApiEndpoint(
      title: 'Popular Series',
      subtitle: 'Get list of popular series',
      type: ApiType.popularSeries,
    ),
    ApiEndpoint(
      title: 'Search Movie',
      subtitle: 'Search for movies',
      type: ApiType.searchMovie,
      requiresInput: true,
    ),
    ApiEndpoint(
      title: 'Search Series',
      subtitle: 'Search for series',
      type: ApiType.searchSeries,
      requiresInput: true,
    ),
    ApiEndpoint(
      title: 'Movie Details',
      subtitle: 'Get movie details by TMDB ID',
      type: ApiType.movieDetails,
      requiresInput: true,
    ),
    ApiEndpoint(
      title: 'Series Details',
      subtitle: 'Get series details by TMDB ID',
      type: ApiType.seriesDetails,
      requiresInput: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streamline API Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cinemeta API Endpoints'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: ListView.builder(
          itemCount: endpoints.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            final endpoint = endpoints[index];
            return Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                title: Text(
                  endpoint.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(endpoint.subtitle),
                trailing: Icon(
                  endpoint.requiresInput
                      ? Icons.input
                      : Icons.arrow_forward_ios,
                  size: 16,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ApiResultPage(endpoint: endpoint),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
