import 'package:injectable/injectable.dart';
import 'package:streamline/data/network/api_service.dart';

@injectable
class AnimeRemoteDatasource {
  final ApiService _apiService;

  AnimeRemoteDatasource(@Named('anime') this._apiService);

  Future<String> isAnimeApiLive() async {
    return await _apiService.isAnimeApiLive();
  }
}
