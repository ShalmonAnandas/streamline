import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_manifest.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_catelogue.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_media_details.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // Anime Endpoints
  @GET('/')
  Future<String> isAnimeApiLive();

  // Cinemeta Endpoints
  @GET('/manifest.json')
  Future<CinemetaManifest> isCinemetaApiLive();

  @GET('/catalog/movie/top.json')
  Future<CinemetaCatalogue> getTopMovies();

  @GET('/catalog/movie/popular.json')
  Future<CinemetaCatalogue> getPopularMovies();

  @GET('/catalog/series/top.json')
  Future<CinemetaCatalogue> getTopSeries();

  @GET('/catalog/series/popular.json')
  Future<CinemetaCatalogue> getPopularSeries();

  @GET('/catalog/movie/top/search={query}.json')
  Future<CinemetaCatalogue> searchMovie(@Query('search') String query);

  @GET('/catalog/series/top/search={query}.json')
  Future<CinemetaCatalogue> searchSeries(@Query('search') String query);

  @GET('/meta/movie/{tmdbId}.json')
  Future<CinemetaMediaDetails> getMovieDetails(@Path('tmdbId') String tmdbId);

  @GET('/meta/series/{tmdbId}.json')
  Future<CinemetaMediaDetails> getSeriesDetails(@Path('tmdbId') String tmdbId);

  // MovieWeb Endpoints
  @GET('/')
  Future<bool> isMovieWebApiLive();

  // TMDB Endpoints
  @GET('/')
  Future<bool> isTmdbApiLive();

  // Torrentio Endpoints
  @GET('/manifest.json')
  Future<bool> isTorrentioApiLive();
}
