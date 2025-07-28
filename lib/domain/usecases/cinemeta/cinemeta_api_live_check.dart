import 'package:injectable/injectable.dart';
import 'package:streamline/domain/repositories/cinemeta_repository.dart';

@injectable
class CinemetaApiLiveCheckUsecase {
  final CinemetaRepository _cinemetaRepository;

  CinemetaApiLiveCheckUsecase(this._cinemetaRepository);

  Future<bool> call() async {
    return await _cinemetaRepository.isCinemetaApiLive();
  }
}
