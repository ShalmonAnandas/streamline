// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i528;
import 'package:streamline/data/datasource/remote/anime_remote_datasource.dart'
    as _i22;
import 'package:streamline/data/datasource/remote/cinemeta_remote_datasource.dart'
    as _i389;
import 'package:streamline/data/network/api_service.dart' as _i855;
import 'package:streamline/data/repository/anime_repository_impl.dart' as _i327;
import 'package:streamline/data/repository/cinemeta_repository_impl.dart'
    as _i336;
import 'package:streamline/data/repository/movie_web_repository_impl.dart'
    as _i116;
import 'package:streamline/data/repository/tmdb_repository_impl.dart' as _i287;
import 'package:streamline/data/repository/torrentio_repository_impl.dart'
    as _i770;
import 'package:streamline/data/utils/network_helper.dart' as _i831;
import 'package:streamline/domain/repositories/anime_repository.dart' as _i243;
import 'package:streamline/domain/repositories/cinemeta_repository.dart'
    as _i527;
import 'package:streamline/domain/repositories/movie_web_repository.dart'
    as _i449;
import 'package:streamline/domain/repositories/tmdb_repository.dart' as _i430;
import 'package:streamline/domain/repositories/torrentio_repository.dart'
    as _i994;
import 'package:streamline/domain/usecases/anime/anime_api_live_check.dart'
    as _i860;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_api_live_check.dart'
    as _i759;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_movie_details.dart'
    as _i381;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_popular_movies.dart'
    as _i887;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_popular_series.dart'
    as _i617;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_series_details.dart'
    as _i752;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_top_movies.dart'
    as _i2;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_get_top_series.dart'
    as _i36;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_search_movie.dart'
    as _i783;
import 'package:streamline/domain/usecases/cinemeta/cinemeta_search_series.dart'
    as _i382;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final networkHelper = _$NetworkHelper();
    gh.singleton<_i528.PrettyDioLogger>(() => networkHelper.logger());
    gh.lazySingleton<_i361.Dio>(
      () => networkHelper.provideMovieWebDio(),
      instanceName: 'movieweb',
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkHelper.provideTorrentioDio(),
      instanceName: 'torrentio',
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkHelper.provideTmdbDio(),
      instanceName: 'tmdb',
    );
    gh.lazySingleton<_i855.ApiService>(
      () => networkHelper
          .provideMovieWebApiService(gh<_i361.Dio>(instanceName: 'movieweb')),
      instanceName: 'movieweb',
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkHelper.provideCinemetaDio(),
      instanceName: 'cinemeta',
    );
    gh.lazySingleton<_i361.Dio>(
      () => networkHelper.provideAnimeDio(),
      instanceName: 'anime',
    );
    gh.lazySingleton<_i855.ApiService>(
      () => networkHelper
          .provideAnimeApiService(gh<_i361.Dio>(instanceName: 'anime')),
      instanceName: 'anime',
    );
    gh.lazySingleton<_i855.ApiService>(
      () => networkHelper
          .provideTorrentioApiService(gh<_i361.Dio>(instanceName: 'torrentio')),
      instanceName: 'torrentio',
    );
    gh.lazySingleton<_i855.ApiService>(
      () => networkHelper
          .provideCinemetaApiService(gh<_i361.Dio>(instanceName: 'cinemeta')),
      instanceName: 'cinemeta',
    );
    gh.factory<_i449.MovieWebRepository>(() => _i116.MovieWebRepositoryImpl(
        gh<_i855.ApiService>(instanceName: 'movieweb')));
    gh.lazySingleton<_i855.ApiService>(
      () => networkHelper
          .provideTmdbApiService(gh<_i361.Dio>(instanceName: 'tmdb')),
      instanceName: 'tmdb',
    );
    gh.factory<_i389.CinemetaRemoteDatasource>(() =>
        _i389.CinemetaRemoteDatasource(
            gh<_i855.ApiService>(instanceName: 'cinemeta')));
    gh.factory<_i22.AnimeRemoteDatasource>(() => _i22.AnimeRemoteDatasource(
        gh<_i855.ApiService>(instanceName: 'anime')));
    gh.factory<_i994.TorrentioRepository>(() => _i770.TorrentioRepositoryImpl(
        gh<_i855.ApiService>(instanceName: 'torrentio')));
    gh.factory<_i430.TmdbRepository>(() =>
        _i287.TmdbRepositoryImpl(gh<_i855.ApiService>(instanceName: 'tmdb')));
    gh.factory<_i243.AnimeRepository>(
        () => _i327.AnimeRepositoryImpl(gh<_i22.AnimeRemoteDatasource>()));
    gh.factory<_i527.CinemetaRepository>(() =>
        _i336.CinemetaRepositoryImpl(gh<_i389.CinemetaRemoteDatasource>()));
    gh.factory<_i2.GetTopMoviesUsecase>(
        () => _i2.GetTopMoviesUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i381.GetMovieDetailsUsecase>(
        () => _i381.GetMovieDetailsUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i382.SearchSeriesUsecase>(
        () => _i382.SearchSeriesUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i752.GetSeriesDetailsUsecase>(
        () => _i752.GetSeriesDetailsUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i617.GetPopularSeriesUsecase>(
        () => _i617.GetPopularSeriesUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i759.CinemetaApiLiveCheckUsecase>(() =>
        _i759.CinemetaApiLiveCheckUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i783.SearchMovieUsecase>(
        () => _i783.SearchMovieUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i887.GetPopularMoviesUsecase>(
        () => _i887.GetPopularMoviesUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i36.GetTopSeriesUsecase>(
        () => _i36.GetTopSeriesUsecase(gh<_i527.CinemetaRepository>()));
    gh.factory<_i860.AnimeApiLiveCheckUsecase>(
        () => _i860.AnimeApiLiveCheckUsecase(gh<_i243.AnimeRepository>()));
    return this;
  }
}

class _$NetworkHelper extends _i831.NetworkHelper {}
