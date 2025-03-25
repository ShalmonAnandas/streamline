import 'package:domain/domain.dart';

mixin ApiConstants {
  final String tmdbBaseUrl = "https://api.themoviedb.org";

  final Map<String, dynamic> tmdbHeaders = {
    "accept": "application/json",
    "Authorization":
        "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3ZjRlNmEyYTA4M2U2MzQzMTU5YmFkNzM2ZDljZmNlMyIsIm5iZiI6MTY0NjEyNjY5NC40ODg5OTk4LCJzdWIiOiI2MjFkZTY2NmQzOGI1ODAwMWJmNDQzNzUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.1ZXqE3RCXzihx5TsaGf6p_g_OSISmGPTbiGmKZjA61Y"
  };

  String get tmdbTrendingMoviesUrl =>
      "$tmdbBaseUrl/3/trending/movie/day?language=en-US";

  String get tmdbTrendingShowsURL =>
      "$tmdbBaseUrl/3/trending/tv/day?language=en-US";

  String get tmdbSearchURL => "$tmdbBaseUrl/3/search/movie?query=";

  String tmdbToImdbConversionURL(GetIMDBIDParams tmdbID) {
    return "$tmdbBaseUrl/3/${tmdbID.mediaType}/${tmdbID.tmdbID}?external_source=imdb_id";
  }
}
