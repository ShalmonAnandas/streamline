import 'package:domain/domain.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart';

part 'search_provider.g.dart';

@riverpod
Future<List<MediaModel>?> search(
  Ref ref, {
  required String query,
}) async {
  final tmdbRepo = getIt<TMDBRepository>();

  final response = await tmdbRepo.searchTMDB(query);

  return response.fold(
    (error) {
      return Future.error(error, StackTrace.current);
    },
    (resultsModel) {
      return resultsModel;
    },
  );
}
