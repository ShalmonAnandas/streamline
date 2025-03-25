import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/results/results_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchTmdb
    extends BaseUseCase<GenericError, SearchTmdbParams, ResultsModel> {
  final TMDBRepository _tmdbRepository;

  SearchTmdb(this._tmdbRepository);

  @override
  Future<Either<GenericError, ResultsModel>> execute(SearchTmdbParams params) {
    return _tmdbRepository.searchTMDB(params.searchQuery);
  }
}

class SearchTmdbParams extends Params {
  SearchTmdbParams(this.searchQuery);

  final String searchQuery;

  @override
  Map<String, dynamic> get toJson => {"search_query": searchQuery};
}
