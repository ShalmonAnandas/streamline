import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/model/anime/anime_home_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetHomeUseCase
    extends BaseUseCase<GenericError, NoParams, AnimeHomeModel> {
  final AnimeRepository _repository;

  GetHomeUseCase(this._repository);

  @override
  Future<Either<GenericError, AnimeHomeModel>> execute(NoParams params) async {
    return _repository.getHome();
  }
}
