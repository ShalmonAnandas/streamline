import 'package:firebase_remote_config/firebase_remote_config.dart';

mixin ApiConstants {
  static final remoteConfig = FirebaseRemoteConfig.instance;

  final String tmdbBaseUrl = "https://api.themoviedb.org";

  String? _cachedAuthorizationToken;

  Map<String, dynamic> get tmdbHeaders {
    _cachedAuthorizationToken ??= remoteConfig.getString('TMDB_API_KEY');
    return {
      "accept": "application/json",
      "Authorization": "Bearer $_cachedAuthorizationToken",
      "User-Agent":
          "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36"
    };
  }

  String tmdbTrendingUrl(String mediaType, int page) {
    return "$tmdbBaseUrl/3/trending/$mediaType/day?language=en-US&page=$page";
  }

  String get tmdbSearchURL => "$tmdbBaseUrl/3/search/multi?query=";

  String tmdbMediaDetailsUrl(String mediaType, int id) {
    return "$tmdbBaseUrl/3/$mediaType/$id?append_to_response=external_ids&language=en-US";
  }

  String tmdbRecommendationsUrl(
      int movieId, String language, int page, String mediaType) {
    return "$tmdbBaseUrl/3/$mediaType/$movieId/recommendations?language=$language&page=$page";
  }
}
