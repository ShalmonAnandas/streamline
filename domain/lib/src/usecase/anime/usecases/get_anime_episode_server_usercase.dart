import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/model/anime/anime_episode_server_model.dart';
import 'package:domain/src/usecase/anime/params/get_anime_episode_server_params.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAnimeDetailsUseCase extends BaseUseCase<GenericError,
    GetAnimeEpisodeServerParams, AnimeEpisodeServerModel> {
  final AnimeRepository _repository;

  GetAnimeDetailsUseCase(this._repository);

  @override
  Future<Either<GenericError, AnimeEpisodeServerModel>> execute(
      GetAnimeEpisodeServerParams params) async {
    return _repository.getAnimeEpisodeServers(params.id);
  }
}
