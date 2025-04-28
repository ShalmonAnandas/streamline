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

// TODO: Export any libraries intended for clients of this package.
