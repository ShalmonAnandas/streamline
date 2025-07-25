import 'package:injectable/injectable.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_manifest.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_catelogue.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_media_details.dart';
import 'package:streamline/data/network/api_service.dart';

@injectable
class CinemetaRemoteDatasource {
  final ApiService _apiService;

  CinemetaRemoteDatasource(@Named('cinemeta') this._apiService);

  Future<CinemetaManifest> isCinemetaApiLive() async {
    return await _apiService.isCinemetaApiLive();
  }

  Future<CinemetaCatalogue> getTopMovies() async {
    return await _apiService.getTopMovies();
  }

  Future<CinemetaCatalogue> getPopularMovies() async {
    return await _apiService.getPopularMovies();
  }

  Future<CinemetaCatalogue> getTopSeries() async {
    return await _apiService.getTopSeries();
  }

  Future<CinemetaCatalogue> getPopularSeries() async {
    return await _apiService.getPopularSeries();
  }

  Future<CinemetaCatalogue> searchMovie(String query) async {
    return await _apiService.searchMovie(query);
  }

  Future<CinemetaCatalogue> searchSeries(String query) async {
    return await _apiService.searchSeries(query);
  }

  Future<CinemetaMediaDetails> getMovieDetails(String tmdbId) async {
    return await _apiService.getMovieDetails(tmdbId);
  }

  Future<CinemetaMediaDetails> getSeriesDetails(String tmdbId) async {
    return await _apiService.getSeriesDetails(tmdbId);
  }
}
