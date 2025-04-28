mixin TMDBApiConstants {
  final String tmdbBaseUrl = "https://streamline-be.vercel.app";

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
