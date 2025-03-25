

import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/results/results_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetTrendingShows extends BaseUseCase <GenericError, NoParams, ResultsModel>{
  final TMDBRepository _tmdbRepository;

  GetTrendingShows(this._tmdbRepository);

  @override
  Future<Either<GenericError, ResultsModel>> execute(NoParams params) {
    return _tmdbRepository.getTrendingShows();
  }
}