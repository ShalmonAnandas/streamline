import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'recommendations_provider.g.dart';

@riverpod
Future<List<MediaModel>?> recommendations(
    Ref ref, GetRecommendationsParams params) async {
  final tmdbRepo = getIt<TMDBRepository>();

  final response = await tmdbRepo.getRecommendations(params);

  return response.fold(
    (error) {
      // Consider more robust error handling/logging
      return Future.error(error, StackTrace.current);
    },
    (mediaList) {
      return mediaList;
    },
  );
}
