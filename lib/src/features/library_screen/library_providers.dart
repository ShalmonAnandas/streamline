import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:streamline/core/di/di.dart'; // Import getIt

part 'library_providers.g.dart'; // Add part directive

// Use Riverpod generator for the savedMediaProvider
@riverpod
Future<List<MediaDetailsModel>> savedMedia(SavedMediaRef ref) async {
  // Get the repository instance using getIt
  final repository = getIt<TMDBRepository>();
  // Fetch the saved media
  final response = await repository.getSavedMedia();

  // Handle potential errors if getSavedMedia returns Either or similar
  // Assuming getSavedMedia directly returns List<MediaDetailsModel> or throws
  return response; // Directly return the list
}
