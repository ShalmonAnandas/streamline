import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streamline/src/features/movie_mode/media/media_ui.dart'; // Import MediaUI
import 'library_providers.dart'; // Import the new provider

// 1. Convert back to ConsumerWidget
class LibraryScreen extends ConsumerWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orientation = MediaQuery.of(context).orientation;
    // Add WidgetRef
    final savedMediaAsyncValue = ref.watch(savedMediaProvider);

    return Scaffold(
      body: savedMediaAsyncValue.when(
        data: (mediaList) {
          if (mediaList.isEmpty) {
            return const Center(child: Text('No saved media yet.'));
          }
          final int crossAxisCount =
              orientation == Orientation.landscape ? 7 : 3;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 3 / 4, // Kept the shorter aspect ratio
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            padding: const EdgeInsets.all(8.0),
            itemCount: mediaList.length,
            itemBuilder: (context, index) {
              final media = mediaList[index];

              return GestureDetector(
                onTap: () {
                  if (media.id != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MediaUI(
                          media.name == null ? 'movie' : 'tv',
                          media.id!,
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Could not open details.')),
                    );
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: media.posterPath != null
                      ? Image.network(
                          'https://image.tmdb.org/t/p/w500${media.posterPath}',
                          fit: BoxFit.cover,
                          // Let the GridView's aspect ratio determine the size
                          width: double.infinity,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                            // Use aspect ratio implicitly
                            color: Colors.grey[800],
                            child: const Center(
                                child: Icon(Icons.movie,
                                    size: 40, color: Colors.white70)),
                          ),
                        )
                      : Container(
                          // Use aspect ratio implicitly
                          color: Colors.grey[800],
                          child: const Center(
                              child: Icon(Icons.movie,
                                  size: 40, color: Colors.white70)),
                        ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(
          child: Text('Error loading saved media: $error'),
        ),
      ),
    );
  }
}
