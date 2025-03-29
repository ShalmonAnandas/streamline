// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../repository/tmdb_repository.dart' as _i681;
import '../usecase/tmdb/get_imdb_id.dart' as _i795;
import '../usecase/tmdb/get_trending.dart' as _i675;
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
    gh.factory<_i795.GetIMDBID>(
        () => _i795.GetIMDBID(gh<_i681.TMDBRepository>()));
    gh.factory<_i493.SearchTmdb>(
        () => _i493.SearchTmdb(gh<_i681.TMDBRepository>()));
    gh.factory<_i675.GetTrending>(
        () => _i675.GetTrending(gh<_i681.TMDBRepository>()));
    return this;
  }
}
