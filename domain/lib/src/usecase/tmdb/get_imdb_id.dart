import 'package:dartz/dartz.dart';
import 'package:domain/src/model/error/network_error.dart';
import 'package:domain/src/model/tmdb/results/results_model.dart';
import 'package:domain/src/repository/tmdb_repository.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:domain/src/usecase/base/params.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetIMDBID
    extends BaseUseCase<GenericError, GetIMDBIDParams, ResultsModel> {
  final TMDBRepository _tmdbRepository;

  GetIMDBID(this._tmdbRepository);

  @override
  Future<Either<GenericError, ResultsModel>> execute(GetIMDBIDParams params) {
    return _tmdbRepository.getIMDBID(params);
  }
}

class GetIMDBIDParams extends Params {
  final String tmdbID;
  final String mediaType;

  GetIMDBIDParams({required this.tmdbID, required this.mediaType});

  @override
  Map<String, dynamic> get toJson => throw UnimplementedError();
}
