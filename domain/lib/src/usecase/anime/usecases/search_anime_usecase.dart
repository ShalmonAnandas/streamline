import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/model/anime/anime_search_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchAnimeUseCase
    extends BaseUseCase<GenericError, SearchAnimeParams, AnimeSearchModel> {
  final AnimeRepository _repository;

  SearchAnimeUseCase(this._repository);

  @override
  Future<Either<GenericError, AnimeSearchModel>> execute(
      SearchAnimeParams params) async {
    return _repository.searchAnime(params.query);
  }
}
