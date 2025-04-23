import 'package:dartz/dartz.dart'; // Import dartz for Either
import 'package:domain/domain.dart';
import 'package:domain/src/usecase/base/base_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

// Assuming BaseUseCase expects P to extend Params from base_usecase.dart
// If Params is defined elsewhere, adjust the import and extension.
class GetRecommendationsParams extends Params with EquatableMixin {
  // Extend Params and use EquatableMixin
  final int movieId;
  final String language;
  final int page;
  final String mediaType;

  GetRecommendationsParams({
    required this.movieId,
    required this.mediaType,
    this.language = 'en-US',
    this.page = 1,
  });

  String get cacheKey =>
      'recommendations_${mediaType}_${movieId}_${language}_p$page';

  @override
  Map<String, dynamic> get toJson => {};

  @override
  List<Object?> get props => [movieId, mediaType, language, page];
}

@injectable
class GetRecommendationsUseCase extends BaseUseCase<GenericError,
    GetRecommendationsParams, List<MediaModel>?> {
  final TMDBRepository _repository;

  GetRecommendationsUseCase(this._repository);

  @override
  Future<Either<GenericError, List<MediaModel>?>> execute(
      GetRecommendationsParams params) {
    return _repository.getRecommendations(params);
  }
}
