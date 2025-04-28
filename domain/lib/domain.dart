/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/di/domain_module.dart';
export 'src/repository/tmdb_repository.dart';
export 'src/model/error/network_error.dart';
export 'src/model/tmdb/media/media_model.dart';
export 'src/model/tmdb/results/results_model.dart';
export 'src/usecase/tmdb/get_trending.dart';
export 'src/usecase/tmdb/get_media_details.dart';
export 'src/model/tmdb/media/media_details_model.dart';

export 'src/usecase/tmdb/get_recommendations_usecase.dart';
export 'src/usecase/tmdb/get_season_details.dart';
export 'src/model/tmdb/media/season_model.dart';

export 'src/usecase/base/params.dart';

// torrentio
export 'src/repository/torrentio_repository.dart';

// anime
export 'src/repository/anime_repository.dart';

export 'src/usecase/anime/usecases/get_anime_details_usecase.dart';
export 'src/usecase/anime/usecases/get_anime_episodes_usecase.dart';
export 'src/usecase/anime/usecases/get_home_usecase.dart';
export 'src/usecase/anime/usecases/get_links_usecase.dart';
export 'src/usecase/anime/usecases/search_anime_usecase.dart';

// Export Params
export 'src/usecase/anime/params/get_anime_details_params.dart';
export 'src/usecase/anime/params/get_anime_episodes_params.dart';
export 'src/usecase/anime/params/get_links_params.dart';
export 'src/usecase/anime/params/search_anime_params.dart';

// Export Base UseCase and Params
export 'src/usecase/base/base_usecase.dart';

// Export Errors
export 'src/model/error/base_error.dart';
export 'src/model/error/error_info.dart';

export 'src/model/anime/anime_details_model.dart';
export 'src/model/anime/anime_episode_server_model.dart';
export 'src/model/anime/anime_episodes_model.dart';
export 'src/model/anime/anime_home_model.dart';
export 'src/model/anime/anime_search_model.dart';
export 'src/model/anime/anime_streaming_links_model.dart';

// TODO: Export any libraries intended for clients of this package.
