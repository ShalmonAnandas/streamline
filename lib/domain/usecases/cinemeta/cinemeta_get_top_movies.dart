import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:streamline/data/models/error_models/base_error.dart';
import 'package:streamline/data/models/response_models/cinemeta/cinemeta_meta.dart';
import 'package:streamline/domain/repositories/cinemeta_repository.dart';

@injectable
class GetTopMoviesUsecase {
  final CinemetaRepository _cinemetaRepository;

  GetTopMoviesUsecase(this._cinemetaRepository);

  Future<Either<List<Meta>, BaseError>> call() async {
    return await _cinemetaRepository.getTopMovies();
  }
}
