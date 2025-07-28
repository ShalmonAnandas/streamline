enum ApiType {
  liveCheck,
  topMovies,
  popularMovies,
  topSeries,
  popularSeries,
  searchMovie,
  searchSeries,
  movieDetails,
  seriesDetails,
}

class ApiEndpoint {
  final String title;
  final String subtitle;
  final ApiType type;
  final bool requiresInput;

  ApiEndpoint({
    required this.title,
    required this.subtitle,
    required this.type,
    this.requiresInput = false,
  });
}
