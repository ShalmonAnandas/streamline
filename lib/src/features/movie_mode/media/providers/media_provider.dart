import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart';

part 'media_provider.g.dart';

@riverpod
Future<MediaDetailsModel> mediaDetails(
    AutoDisposeFutureProviderRef ref, GetMediaDetailsParams params) async {
  final tmdbRepo = getIt<TMDBRepository>();

  final response = await tmdbRepo.getMediaDetails(params);

  return response.fold(
    (error) {
      return Future.error(error, StackTrace.current);
    },
    (mediaDetailsModel) {
      return mediaDetailsModel;
    },
  );
}

// Use Riverpod generator for the Notifier
@riverpod
class MediaSave extends _$MediaSave {
  // Keep track of the media item internally
  late MediaDetailsModel _media;

  // The build method is used for initialization
  @override
  Future<bool> build(MediaDetailsModel media) async {
    _media = media; // Store the media item
    final tmdbRepository = getIt<TMDBRepository>();

    // Ensure media.id is not null before calling isMediaSaved
    if (_media.id == null) {
      throw Exception('Media ID is null'); // Throw error in build
    }

    try {
      final isSaved =
          await tmdbRepository.isMediaSaved(_media.id!); // Use null assertion
      return isSaved;
    } catch (e) {
      // Handle potential errors during the initial check
      // Consider logging the error
      rethrow; // Rethrow to let Riverpod handle the error state
    }
  }

  // Method to save the media
  Future<void> saveMedia() async {
    final tmdbRepository = getIt<TMDBRepository>();

    // Optimistically update the UI to 'saved'
    state = const AsyncValue.data(true);

    try {
      tmdbRepository.saveMedia(_media);
      // State is already true, no need to update again unless there's a failure
    } catch (e, s) {
      // If saving fails, revert the state to error
      state = AsyncValue.error(e, s);
      // Optionally, you could try to refetch the actual saved status here
      // ref.invalidateSelf();
    }
  }

  // Method to remove the saved media
  Future<void> removeSavedMedia() async {
    final tmdbRepository = getIt<TMDBRepository>();

    // Optimistically update the UI to 'not saved'
    state = const AsyncValue.data(false);

    try {
      // Ensure media.id is not null before calling removeSavedMedia
      if (_media.id == null) {
        throw Exception('Media ID is null, cannot remove');
      }
      await tmdbRepository.removeSavedMedia(_media.id!);
      // State is already false, no need to update again unless there's a failure
    } catch (e, s) {
      // If removing fails, revert the state to error
      state = AsyncValue.error(e, s);
      // Optionally, you could try to refetch the actual saved status here
      // ref.invalidateSelf();
    }
  }
}

@riverpod
Future<SeasonModel> seasonDetails(
    AutoDisposeFutureProviderRef ref, GetSeasonDetailsParams params) async {
  final tmdbRepo = getIt<TMDBRepository>();

  final response = await tmdbRepo.getSeasonDetails(params);

  return response.fold(
    (error) {
      return Future.error(error, StackTrace.current);
    },
    (seasonModel) {
      return seasonModel;
    },
  );
}
