import 'package:domain/domain.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

mixin ApiConstants {
  static final remoteConfig = FirebaseRemoteConfig.instance;

  final String tmdbBaseUrl = "https://api.themoviedb.org";

  // Cache for the Authorization token
  String? _cachedAuthorizationToken;

  Map<String, dynamic> get tmdbHeaders {
    // Fetch the token only if it hasn't been cached
    _cachedAuthorizationToken ??= remoteConfig.getString('TMDB_API_KEY');
    return {
      "accept": "application/json",
      "Authorization": "Bearer $_cachedAuthorizationToken",
    };
  }

  String tmdbTrendingUrl(String mediaType, int page) {
    return "$tmdbBaseUrl/3/trending/$mediaType/day?language=en-US&page=$page";
  }

  String get tmdbSearchURL => "$tmdbBaseUrl/3/search/multi?query=";

  String tmdbToImdbConversionURL(GetIMDBIDParams tmdbID) {
    return "$tmdbBaseUrl/3/${tmdbID.mediaType}/${tmdbID.tmdbID}?external_source=imdb_id";
  }
}
