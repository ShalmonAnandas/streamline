import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetMediaDetails extends BaseUseCase<GenericError, GetMediaDetailsParams,
    MediaDetailsModel> {
  final TMDBRepository _tmdbRepository;

  GetMediaDetails(this._tmdbRepository);

  @override
  Future<Either<GenericError, MediaDetailsModel>> execute(
      GetMediaDetailsParams params) async {
    return await _tmdbRepository.getMediaDetails(params);
  }
}

class GetMediaDetailsParams extends Params {
  final int id;
  final String mediaType;

  GetMediaDetailsParams(this.id, this.mediaType);

  @override
  List<Object?> get props => [id, mediaType];

  @override
  Map<String, dynamic> get toJson => {"id": id, "media_type": mediaType};
}
