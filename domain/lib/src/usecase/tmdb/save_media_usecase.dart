import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';
import 'package:domain/src/usecase/base/base_usecase.dart'; // Ensure BaseUseCase is imported
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

// Define a specific Params class extending Params and EquatableMixin
class SaveMediaParams extends Params with EquatableMixin {
  final MediaDetailsModel media;

  SaveMediaParams({required this.media});

  @override
  Map<String, dynamic> get toJson => {}; // Not typically needed for saving

  @override
  List<Object?> get props => [media];
}

@injectable
// Update BaseUseCase signature to use SaveMediaParams
class SaveMediaUseCase
    extends BaseUseCase<GenericError, SaveMediaParams, void> {
  final TMDBRepository _repository;

  SaveMediaUseCase(this._repository);

  @override
  // Update execute method signature to match BaseUseCase
  Future<Either<GenericError, void>> execute(SaveMediaParams params) async {
    try {
      // Access media from params
      _repository.saveMedia(params.media);
      // Return Right(null) for void success
      return const Right(null);
    } catch (e) {
      // Ensure the caught object is an Exception before passing to GenericError
      final exception = e is Exception ? e : Exception(e.toString());
      return Left(
          GenericError(message: e.toString(), errorCode: -1, cause: exception));
    }
  }
}
