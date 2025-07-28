import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:streamline/data/models/error_models/base_error.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_meta.dart';
import 'package:streamline/domain/repositories/cinemeta_repository.dart';

@injectable
class GetSeriesDetailsUsecase {
  final CinemetaRepository _cinemetaRepository;

  GetSeriesDetailsUsecase(this._cinemetaRepository);

  Future<Either<Meta, BaseError>> call(String tmdbId) async {
    return await _cinemetaRepository.getSeriesDetails(tmdbId);
  }
}
