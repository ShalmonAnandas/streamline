import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/model/anime/anime_streaming_links_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetLinksUseCase extends BaseUseCase<GenericError, GetLinksParams,
    AnimeStreamingLinksModel> {
  final AnimeRepository _repository;

  GetLinksUseCase(this._repository);

  @override
  Future<Either<GenericError, AnimeStreamingLinksModel>> execute(
      GetLinksParams params) async {
    return _repository.getLinks(params.id, params.server, params.category);
  }
}
