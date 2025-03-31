import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'media_provider.g.dart';

@riverpod
Future<MediaDetailsModel> mediaDetails(
    Ref ref, GetMediaDetailsParams params) async {
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
