import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/model/anime/anime_episodes_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAnimeEpisodesUseCase extends BaseUseCase<GenericError,
    GetAnimeEpisodesParams, AnimeEpisodesModel> {
  final AnimeRepository _repository;

  GetAnimeEpisodesUseCase(this._repository);

  @override
  Future<Either<GenericError, AnimeEpisodesModel>> execute(
      GetAnimeEpisodesParams params) async {
    return _repository.getAnimeEpisodes(params.id);
  }
}
