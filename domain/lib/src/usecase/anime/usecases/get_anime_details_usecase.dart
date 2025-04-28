import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

// Define a placeholder return type or import the actual model
// For example: import 'package:domain/src/model/anime/anime_details.dart';
typedef AnimeDetails = dynamic; // Placeholder

@injectable
class GetAnimeDetailsUseCase
    extends BaseUseCase<GenericError, GetAnimeDetailsParams, AnimeDetails> {
  final AnimeRepository _repository;

  GetAnimeDetailsUseCase(this._repository);

  @override
  Future<Either<GenericError, AnimeDetails>> execute(
      GetAnimeDetailsParams params) async {
    return _repository.getAnimeDetails(params.id);
  }
}
