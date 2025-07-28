import 'package:injectable/injectable.dart';
import 'package:streamline/data/network/api_service.dart';
import 'package:streamline/domain/repositories/torrentio_repository.dart';

@Injectable(as: TorrentioRepository)
class TorrentioRepositoryImpl extends TorrentioRepository {
  final ApiService _apiService;

  TorrentioRepositoryImpl(@Named('torrentio') this._apiService);

  @override
  Future<bool> isTorrentioApiLive() async {
    return await _apiService.isTorrentioApiLive();
  }
}
