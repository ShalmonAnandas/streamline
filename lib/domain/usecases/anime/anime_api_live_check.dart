import 'package:injectable/injectable.dart';
import 'package:streamline/domain/repositories/anime_repository.dart';

@injectable
class AnimeApiLiveCheckUsecase {
  final AnimeRepository _animeRepository;

  AnimeApiLiveCheckUsecase(this._animeRepository);

  Future<bool> call() async {
    return await _animeRepository.isAnimeApiLive();
  }
}
