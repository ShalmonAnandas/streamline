import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/results/results_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';

class GetTrendingMovies
    extends BaseUseCase<NetworkError, NoParams, ResultsModel> {
  final TMDBRepository _tmdbRepository;

  GetTrendingMovies(this._tmdbRepository);

  @override
  Future<Either<NetworkError, ResultsModel>> execute(NoParams params) {
    return _tmdbRepository.getTrendingMovies();
  }
}
