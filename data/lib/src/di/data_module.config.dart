// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i494;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../ds/local/tmdb/tmdb_local_ds.dart' as _i935;
import '../ds/local/tmdb/tmdb_local_ds_impl.dart' as _i891;
import '../ds/remote/tmdb/tmdb_remote_ds.dart' as _i351;
import '../ds/remote/tmdb/tmdb_remote_ds_impl.dart' as _i535;
import '../repository/tmdb_repository_impl.dart' as _i995;
import '../utils/api_service.dart' as _i849;
import '../utils/cache_service.dart' as _i887;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt initDataModule({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i849.APIClient>(() => _i849.APIClient());
    gh.factory<_i887.CacheService>(() => _i887.CacheService());
    gh.factory<_i935.TMDBLocalDs>(
        () => _i891.TMDBLocalDsImpl(gh<_i887.CacheService>()));
    gh.factory<_i351.TMDBRemoteDs>(
        () => _i535.TMDBRemoteDSImpl(gh<_i849.APIClient>()));
    gh.factory<_i494.TMDBRepository>(() => _i995.TMDBRepositoryImpl(
          gh<_i935.TMDBLocalDs>(),
          gh<_i351.TMDBRemoteDs>(),
        ));
    return this;
  }
}
