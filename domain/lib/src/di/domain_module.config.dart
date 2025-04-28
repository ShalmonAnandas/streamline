// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../domain.dart' as _i789;
import '../repository/tmdb_repository.dart' as _i681;
import '../usecase/anime/usecases/get_anime_details_usecase.dart' as _i401;
import '../usecase/anime/usecases/get_anime_episode_server_usercase.dart'
    as _i618;
import '../usecase/anime/usecases/get_anime_episodes_usecase.dart' as _i664;
import '../usecase/anime/usecases/get_home_usecase.dart' as _i26;
import '../usecase/anime/usecases/get_links_usecase.dart' as _i677;
import '../usecase/anime/usecases/search_anime_usecase.dart' as _i800;
import '../usecase/tmdb/get_media_details.dart' as _i591;
import '../usecase/tmdb/get_recommendations_usecase.dart' as _i666;
import '../usecase/tmdb/get_season_details.dart' as _i436;
import '../usecase/tmdb/get_trending.dart' as _i675;
import '../usecase/tmdb/save_media_usecase.dart' as _i410;
import '../usecase/tmdb/search_tmdb.dart' as _i493;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initDomainModule({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i436.GetSeasonDetails>(() => _i436.GetSeasonDetails());
    gh.factory<_i401.GetAnimeDetailsUseCase>(
        () => _i401.GetAnimeDetailsUseCase(gh<_i789.AnimeRepository>()));
    gh.factory<_i664.GetAnimeEpisodesUseCase>(
        () => _i664.GetAnimeEpisodesUseCase(gh<_i789.AnimeRepository>()));
    gh.factory<_i26.GetHomeUseCase>(
        () => _i26.GetHomeUseCase(gh<_i789.AnimeRepository>()));
    gh.factory<_i677.GetLinksUseCase>(
        () => _i677.GetLinksUseCase(gh<_i789.AnimeRepository>()));
    gh.factory<_i800.SearchAnimeUseCase>(
        () => _i800.SearchAnimeUseCase(gh<_i789.AnimeRepository>()));
    gh.factory<_i618.GetAnimeDetailsUseCase>(
        () => _i618.GetAnimeDetailsUseCase(gh<_i789.AnimeRepository>()));
    gh.factory<_i591.GetMediaDetails>(
        () => _i591.GetMediaDetails(gh<_i789.TMDBRepository>()));
    gh.factory<_i675.GetTrending>(
        () => _i675.GetTrending(gh<_i681.TMDBRepository>()));
    gh.factory<_i493.SearchTmdb>(
        () => _i493.SearchTmdb(gh<_i681.TMDBRepository>()));
    gh.factory<_i666.GetRecommendationsUseCase>(
        () => _i666.GetRecommendationsUseCase(gh<_i789.TMDBRepository>()));
    gh.factory<_i410.SaveMediaUseCase>(
        () => _i410.SaveMediaUseCase(gh<_i789.TMDBRepository>()));
    return this;
  }
}
