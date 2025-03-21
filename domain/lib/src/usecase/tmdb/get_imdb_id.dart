import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/results/results_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';

class GetIMDBID
    extends BaseUseCase<NetworkError, GetIMDBIDParams, ResultsModel> {
  final TMDBRepository _tmdbRepository;

  GetIMDBID(this._tmdbRepository);

  @override
  Future<Either<NetworkError, ResultsModel>> execute(GetIMDBIDParams params) {
    return _tmdbRepository.getIMDBID(params);
  }
}

class GetIMDBIDParams extends Params {
  final String tmdbID;

  GetIMDBIDParams({required this.tmdbID});

  @override
  Map<String, dynamic> get toJson => throw UnimplementedError();
}
