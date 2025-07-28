import 'package:injectable/injectable.dart';
import 'package:streamline/data/network/api_service.dart';
import 'package:streamline/domain/repositories/tmdb_repository.dart';

@Injectable(as: TmdbRepository)
class TmdbRepositoryImpl extends TmdbRepository {
  final ApiService _apiService;

  TmdbRepositoryImpl(@Named('tmdb') this._apiService);

  @override
  Future<bool> isTmdbApiLive() async {
    return await _apiService.isTmdbApiLive();
  }
}
