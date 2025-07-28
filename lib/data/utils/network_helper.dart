import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:streamline/data/network/api_service.dart';

@module
abstract class NetworkHelper {
  static const String _cinemataBaseUrl = 'https://v3-cinemeta.strem.io';
  static const String _torrentioBaseUrl = 'https://torrentio.strem.fun';
  static const String _moviewebBaseUrl = 'https://movie-api-ten-rho.vercel.app';
  static const String _tmdbBaseUrl = 'https://streamline-be.vercel.app';
  static const String _animeBaseUrl = 'https://anime-api-itzme.vercel.app';

  @lazySingleton
  @Named('cinemeta')
  Dio provideCinemetaDio() {
    Dio dio = Dio(BaseOptions(baseUrl: _cinemataBaseUrl));
    dio.interceptors.add(
      PrettyDioLogger(request: true, requestBody: true, responseBody: true),
    );
    return dio;
  }

  @lazySingleton
  @Named('torrentio')
  Dio provideTorrentioDio() {
    Dio dio = Dio(BaseOptions(baseUrl: _torrentioBaseUrl));
    dio.interceptors.add(
      PrettyDioLogger(request: true, requestBody: true, responseBody: true),
    );
    return dio;
  }

  @lazySingleton
  @Named('movieweb')
  Dio provideMovieWebDio() {
    Dio dio = Dio(BaseOptions(baseUrl: _moviewebBaseUrl));
    dio.interceptors.add(
      PrettyDioLogger(request: true, requestBody: true, responseBody: true),
    );
    return dio;
  }

  @lazySingleton
  @Named('tmdb')
  Dio provideTmdbDio() {
    Dio dio = Dio(BaseOptions(baseUrl: _tmdbBaseUrl));
    dio.interceptors.add(
      PrettyDioLogger(request: true, requestBody: true, responseBody: true),
    );
    return dio;
  }

  @lazySingleton
  @Named('anime')
  Dio provideAnimeDio() {
    Dio dio = Dio(BaseOptions(baseUrl: _animeBaseUrl));
    dio.interceptors.add(
      PrettyDioLogger(request: true, requestBody: true, responseBody: true),
    );
    return dio;
  }

  @singleton
  PrettyDioLogger logger() {
    return PrettyDioLogger(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    );
  }

  @lazySingleton
  @Named('cinemeta')
  ApiService provideCinemetaApiService(@Named('cinemeta') Dio dio) =>
      ApiService(dio);

  @lazySingleton
  @Named('torrentio')
  ApiService provideTorrentioApiService(@Named('torrentio') Dio dio) =>
      ApiService(dio);

  @lazySingleton
  @Named('movieweb')
  ApiService provideMovieWebApiService(@Named('movieweb') Dio dio) =>
      ApiService(dio);

  @lazySingleton
  @Named('tmdb')
  ApiService provideTmdbApiService(@Named('tmdb') Dio dio) => ApiService(dio);

  @lazySingleton
  @Named('anime')
  ApiService provideAnimeApiService(@Named('anime') Dio dio) => ApiService(dio);
}
