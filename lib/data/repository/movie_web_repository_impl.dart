import 'package:injectable/injectable.dart';
import 'package:streamline/data/network/api_service.dart';
import 'package:streamline/domain/repositories/movie_web_repository.dart';

@Injectable(as: MovieWebRepository)
class MovieWebRepositoryImpl implements MovieWebRepository {
  final ApiService _apiService;

  MovieWebRepositoryImpl(@Named('movieweb') this._apiService);

  @override
  Future<bool> isMovieWebApiLive() async {
    return await _apiService.isMovieWebApiLive();
  }
}
