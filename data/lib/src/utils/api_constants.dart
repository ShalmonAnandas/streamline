import 'package:domain/domain.dart';

mixin ApiConstants {
  final String tmdbBaseUrl = "https://api.themoviedb.org";

  final Map<String, dynamic> tmdbHeaders = {
    "accept": "application/json",
    "Authorization":
        "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3ZjRlNmEyYTA4M2U2MzQzMTU5YmFkNzM2ZDljZmNlMyIsIm5iZiI6MTY0NjEyNjY5NC40ODg5OTk4LCJzdWIiOiI2MjFkZTY2NmQzOGI1ODAwMWJmNDQzNzUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.1ZXqE3RCXzihx5TsaGf6p_g_OSISmGPTbiGmKZjA61Y"
  };

  String tmdbTrendingUrl(String mediaType, int page) {
    return "$tmdbBaseUrl/3/trending/$mediaType/day?language=en-US&page=$page";
  }

  String get tmdbSearchURL => "$tmdbBaseUrl/3/search/multi?query=";

  String tmdbToImdbConversionURL(GetIMDBIDParams tmdbID) {
    return "$tmdbBaseUrl/3/${tmdbID.mediaType}/${tmdbID.tmdbID}?external_source=imdb_id";
  }
}
