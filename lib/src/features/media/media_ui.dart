import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streamline/core/base_widget/riverpod_stateless_widget.dart';
import 'package:streamline/src/features/media/providers/media_provider.dart';

// Import new widgets
import 'widgets/media_app_bar.dart';
import 'widgets/title_and_metadata.dart';
import 'widgets/genre_chips.dart';
import 'widgets/action_buttons.dart';
import 'widgets/storyline_section.dart';
import 'widgets/recommendations_section.dart';

class MediaUI extends ConsumerStatefulWidget {
  const MediaUI(this.mediaType, this.id, {super.key});

  final String mediaType;
  final int id;

  @override
  ConsumerState<MediaUI> createState() => _MyWidgetState();
}

class _MyWidgetState extends ConsumerState<MediaUI> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return RiverpodStatelessWidget<MediaDetailsModel>(
      provider: MediaDetailsProvider(GetMediaDetailsParams(
        widget.id,
        widget.mediaType,
      )),
      child: (model) => Scaffold(
        backgroundColor:
            const Color(0xFF0F0F0F), // Slightly adjusted dark background
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Use MediaAppBar widget
              MediaAppBar(
                model: model,
                screenWidth: screenWidth,
                screenHeight: screenHeight,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(top: 16.0), // Add top padding
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Use TitleAndMetadata widget
                    TitleAndMetadata(
                      title: model.originalTitle ??
                          model.originalName ??
                          'No Title',
                      year: _getYear(model.releaseDate ?? model.firstAirDate),
                      ratingWidget: _buildStarRating(model.voteAverage),
                      duration: _formatDuration(model.runtime),
                    ),
                    const SizedBox(height: 16),
                    // Use GenreChips widget
                    GenreChips(genres: model.genres),
                    const SizedBox(height: 28),
                    // Use ActionButtons widget
                    ActionButtons(media: model),
                    const SizedBox(height: 36),
                    // Use StorylineSection widget
                    StorylineSection(overview: model.overview),
                    const SizedBox(height: 36),
                    // Use RecommendationsSection widget
                    RecommendationsSection(
                      mediaId: widget.id,
                      mediaType: widget.mediaType,
                    ),
                    const SizedBox(height: 30), // Bottom padding
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper to extract year - Accepts DateTime?
  String _getYear(DateTime? date) {
    if (date == null) return '-'; // Use dash for N/A
    return date.year.toString();
  }

  // Helper to format duration (assuming runtime is in minutes)
  String _formatDuration(int? runtime) {
    if (runtime == null || runtime <= 0) return '-'; // Use dash for N/A
    final duration = Duration(minutes: runtime);
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    String result = '';
    if (hours > 0) {
      result += '${hours}h';
      if (minutes > 0) {
        result += ' '; // Add space only if minutes also exist
      }
    }
    if (minutes > 0) {
      result += '${minutes}m';
    }
    return result.isEmpty
        ? '-'
        : result; // Handle case where duration might be 0
  }

  // Helper widget for star rating display (kept here as it's needed by TitleAndMetadata)
  Widget _buildStarRating(double? rating) {
    if (rating == null || rating <= 0) return const SizedBox.shrink();
    double effectiveRating = rating / 2; // Convert 0-10 scale to 0-5
    int fullStars = effectiveRating.floor();
    bool hasHalfStar = (effectiveRating - fullStars) >= 0.5;
    int emptyStars = 5 - fullStars - (hasHalfStar ? 1 : 0);

    List<Widget> stars = [];
    for (int i = 0; i < fullStars; i++) {
      stars.add(const Icon(Icons.star_rounded, color: Colors.amber, size: 20));
    }
    if (hasHalfStar) {
      stars.add(
          const Icon(Icons.star_half_rounded, color: Colors.amber, size: 20));
    }
    for (int i = 0; i < emptyStars; i++) {
      stars.add(
          const Icon(Icons.star_border_rounded, color: Colors.amber, size: 20));
    }

    return Row(mainAxisSize: MainAxisSize.min, children: stars);
  }
}
