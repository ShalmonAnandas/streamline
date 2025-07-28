import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:streamline/data/models/error_models/base_error.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_meta.dart';
import 'package:streamline/domain/repositories/cinemeta_repository.dart';

@injectable
class SearchSeriesUsecase {
  final CinemetaRepository _cinemetaRepository;

  SearchSeriesUsecase(this._cinemetaRepository);

  Future<Either<List<Meta>, BaseError>> call(String query) async {
    return await _cinemetaRepository.searchSeries(query);
  }
}
