import 'package:data/src/utils/typedefs.dart';
import 'package:domain/domain.dart';

abstract class TMDBRemoteDs {
  Future<TMDBReturnType> getTrendingMovies();
  Future<TMDBReturnType> getTrendingShows();
  Future<TMDBReturnType> getIMDBID(GetIMDBIDParams params);
  Future<TMDBReturnType> searchTMDB(String searchQuery);
}
