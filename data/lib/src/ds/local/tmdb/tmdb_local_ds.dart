import 'package:domain/domain.dart';

abstract class TMDBLocalDs {
  Future<ResultsModel?> getTrendingMovies();
  Future<ResultsModel?> getTrendingShows();

  void cacheTrendingMovies<T>(T data);
  void cacheTrendingShows<T>(T data);
}
