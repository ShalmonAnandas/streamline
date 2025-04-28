// New MediaCard Widget
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:streamline/src/features/movie_mode/media/media_ui.dart';
import 'package:streamline/src/features/movie_mode/media/widgets/recommendations_section.dart';

class MediaCard extends StatelessWidget {
  final MediaModel media;

  const MediaCard({super.key, required this.media});

  @override
  Widget build(BuildContext context) {
    final imageUrl = media.posterPath != null
        ? '$tmdbImageBaseUrl${media.posterPath}'
        : null; // Handle null poster path

    return SizedBox(
      width: 140, // Increased width
      height: 220, // Added height to ensure consistency
      child: GestureDetector(
        // Added GestureDetector for tap handling
        onTap: () {
          // Navigate to MediaScreen on tap
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  MediaUI(media.mediaType ?? '', media.id ?? 0),
            ),
          );
        },
        child: Card(
          clipBehavior: Clip.antiAlias, // Clip the image to the card shape
          child: imageUrl != null
              ? Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  // Optional: Add loading/error builders for better UX
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                        child: Icon(Icons.broken_image, color: Colors.grey));
                  },
                )
              : const Center(
                  // Placeholder if no image
                  child: Icon(Icons.movie, color: Colors.grey),
                ),
        ),
      ),
    );
  }
}
