import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/model/tmdb/media/season_model.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetSeasonDetails
    extends BaseUseCase<GenericError, GetSeasonDetailsParams, SeasonModel> {
  @override
  Future<Either<GenericError, SeasonModel>> execute(
      GetSeasonDetailsParams params) {
    throw UnimplementedError();
  }
}

class GetSeasonDetailsParams extends Params {
  final int id;
  final int seasonNumber;

  GetSeasonDetailsParams(this.id, this.seasonNumber);

  @override
  List<Object?> get props => [id, seasonNumber];

  @override
  Map<String, dynamic> get toJson => {
        "id": id,
        "season_number": seasonNumber,
      };
}
