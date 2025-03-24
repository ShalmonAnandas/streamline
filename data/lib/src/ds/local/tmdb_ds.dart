

import 'package:domain/domain.dart';

abstract class TMDBLocalDs {
  Future<ResultsModel> getTrendingMovies();
  Future<ResultsModel> getTrendingShows();
  Future<ResultsModel> getIMDBID();
  Future<ResultsModel> searchTMDB();
}