mixin TMDBApiConstants {
  final String tmdbBaseUrl = "https://streamline-be.vercel.app";

  Map<String, dynamic> get tmdbHeaders {
    return {
      "accept": "application/json",
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI3ZjRlNmEyYTA4M2U2MzQzMTU5YmFkNzM2ZDljZmNlMyIsIm5iZiI6MTY0NjEyNjY5NC40ODg5OTk4LCJzdWIiOiI2MjFkZTY2NmQzOGI1ODAwMWJmNDQzNzUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.1ZXqE3RCXzihx5TsaGf6p_g_OSISmGPTbiGmKZjA61Y",
      "User-Agent":
          "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36"
    };
  }

  String tmdbTrendingUrl(String mediaType, int page) {
    return "$tmdbBaseUrl/trending/$mediaType?page=$page";
  }

  String get tmdbSearchURL => "$tmdbBaseUrl/search/multi?query=";

  String tmdbMediaDetailsUrl(String mediaType, int id) {
    return "$tmdbBaseUrl/details/$mediaType/$id";
  }

  String tmdbRecommendationsUrl(
      int movieId, String language, int page, String mediaType) {
    return "$tmdbBaseUrl/recommendations/$mediaType/$movieId?language=$language&page=$page";
  }

  String tmdbSeasonDetailsUrl(int id, int seasonNumber) {
    return "$tmdbBaseUrl/tv/$id/season/$seasonNumber?language=en-US";
  }
}
