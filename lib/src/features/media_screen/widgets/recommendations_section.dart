import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamline/src/features/media_screen/providers/recommendations_provider.dart';
import 'package:streamline/src/features/media_screen/widgets/media_card.dart';

// Define the base URL for TMDB images (you might want to centralize this)
const String tmdbImageBaseUrl = 'https://image.tmdb.org/t/p/original';

class RecommendationsSection extends ConsumerWidget {
  // Changed to ConsumerWidget
  final int mediaId;
  final String mediaType;

  const RecommendationsSection({
    super.key,
    required this.mediaId,
    required this.mediaType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recommendationsAsync =
        ref.watch(recommendationsProvider(GetRecommendationsParams(
      movieId: mediaId,
      mediaType: mediaType,
    ))); // Pass tuple

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'More like this',
          style: GoogleFonts.quicksand(
            fontSize: 20, // Slightly larger
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 16),
        // Use AsyncValue to handle loading/error/data states
        recommendationsAsync.when(
          data: (recommendations) {
            if (recommendations == null || recommendations.isEmpty) {
              return SizedBox(
                height: 190,
                child: Center(
                  child: Text(
                    'No recommendations found.',
                    style: GoogleFonts.quicksand(
                        color: Colors.white54, fontSize: 14),
                  ),
                ),
              );
            }
            return SizedBox(
              height: 220, // Adjust height as needed for MediaCard
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: recommendations.length,
                itemBuilder: (context, index) {
                  final media = recommendations[index];
                  // Use MediaCard
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: MediaCard(media: media), // Use MediaCard
                  );
                },
              ),
            );
          },
          loading: () => const SizedBox(
            height: 190,
            child: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stackTrace) => SizedBox(
            height: 190,
            child: Center(
              child: Text(
                'Error loading recommendations: $error',
                style: GoogleFonts.quicksand(
                    color: Colors.redAccent, fontSize: 14),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
