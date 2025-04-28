import 'package:amicons/amicons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:streamline/core/base_widget/riverpod_stateless_widget.dart';
import 'package:streamline/src/features/movie_mode/media/providers/media_provider.dart';

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

class _MyWidgetState extends ConsumerState<MediaUI>
    with TickerProviderStateMixin {
  late TabController _tabController;

  // Helper function to calculate height based on episode count for a given season
  double _calculateHeightForSeason(int seasonIndex, List<Season>? seasons) {
    double estimatedItemHeight = 120.0; // Estimate height of one ListTile
    if (seasons == null ||
        seasons.isEmpty ||
        seasonIndex < 0 ||
        seasonIndex >= seasons.length) {
      // Return a default minimum height if seasons data is unavailable or index is invalid
      return estimatedItemHeight;
    }
    final season = seasons[seasonIndex];
    final episodeCount = season.episodeCount ?? 0;

    if (episodeCount == 0) {
      // Return a minimum height even for seasons with 0 episodes to show the message
      return estimatedItemHeight;
    }
    // Calculate height based on episode count
    // Add some padding if needed, or adjust estimatedItemHeight
    return episodeCount * estimatedItemHeight;
  }

  // Listener to trigger rebuild when tab changes, so height can be recalculated
  void _onTabChanged() {
    // Check if the controller index is actually changing OR if the animation just finished
    if (_tabController.indexIsChanging ||
        !_tabController.animation!.isAnimating) {
      // Check if the widget is still mounted before calling setState
      if (mounted) {
        setState(() {
          // No state needs to be explicitly changed here.
          // Simply calling setState triggers a rebuild,
          // which will recalculate the height in the build method based on the new index.
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    // Initialize with length 0. It will be updated in the first build pass with data.
    _tabController = TabController(length: 0, vsync: this);
    // Add listener to rebuild on tab change
    _tabController.addListener(_onTabChanged);
  }

  @override
  void dispose() {
    _tabController.removeListener(_onTabChanged); // Remove listener
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return RiverpodStatelessWidget<MediaDetailsModel>(
      provider: MediaDetailsProvider(GetMediaDetailsParams(
        widget.id,
        widget.mediaType,
      )),
      child: (model) {
        final newSeasonCount = model.seasons?.length ?? 0;
        int previousIndex = _tabController
            .index; // Store current index before potential rebuild

        // Update TabController length if the season count has changed
        if (_tabController.length != newSeasonCount) {
          // Remove listener from the old controller before disposing it
          // This is important to avoid memory leaks or unwanted behavior
          _tabController.removeListener(_onTabChanged);
          // Keep track of the old controller to dispose it after the build cycle
          // to avoid issues if the listener tries to access it during the transition.
          // However, disposing immediately is usually correct if managed carefully.
          _tabController.dispose();

          // Create a new controller with the correct length
          _tabController = TabController(
            length: newSeasonCount,
            vsync: this,
            // Restore previous index if valid, otherwise default to 0
            initialIndex: (previousIndex >= 0 && previousIndex < newSeasonCount)
                ? previousIndex
                : 0,
          );
          // Add listener to the new controller
          _tabController.addListener(_onTabChanged);
        }

        // Calculate the height based on the *currently selected* season's episode count
        // This happens on every build, ensuring the height is correct after tab changes (due to setState)
        // or controller recreation.
        final double currentSeasonHeight = _calculateHeightForSeason(
          _tabController.index, // Use the current index of the controller
          model.seasons,
        );

        return Scaffold(
          backgroundColor: const Color(0xFF0F0F0F),
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
                      .copyWith(top: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Use TitleAndMetadata widget
                      TitleAndMetadata(
                        title: model.title ?? model.name ?? 'No Title',
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
                      // Only show Episodes section for TV shows and if there are seasons
                      if (widget.mediaType != 'movie' &&
                          newSeasonCount > 0) ...[
                        const SizedBox(height: 36), // Keep spacing consistent
                        const Text(
                          'Episodes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        TabBar(
                          controller: _tabController,
                          tabAlignment: TabAlignment.start,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.white,
                          isScrollable: true,
                          dividerColor: Colors.transparent,
                          tabs: List<Widget>.generate(newSeasonCount, (index) {
                            return Tab(
                                text: model.seasons?[index].name ??
                                    'Season ${index + 1}');
                          }),
                        ),
                        const SizedBox(height: 16),
                        // Use the dynamically calculated height for the SizedBox
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 400),
                          height: currentSeasonHeight, // Apply dynamic height
                          child: TabBarView(
                            controller: _tabController,
                            children: List<Widget>.generate(newSeasonCount,
                                (seasonIndex) {
                              final season = model.seasons?[seasonIndex];
                              // Ensure season and season number are not null
                              if (season == null ||
                                  season.seasonNumber == null) {
                                return const Center(
                                  child: Text(
                                    'Season data unavailable.',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                );
                              }

                              // Use the seasonDetails provider for each tab
                              final seasonProvider = seasonDetailsProvider(
                                GetSeasonDetailsParams(
                                  widget.id,
                                  season.seasonNumber!,
                                ),
                              );

                              // Use Consumer to watch the provider for this specific season
                              return Consumer(
                                builder: (context, ref, child) {
                                  final seasonDetailsAsync =
                                      ref.watch(seasonProvider);

                                  return seasonDetailsAsync.when(
                                    loading: () => ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount:
                                          5, // Show 5 shimmer items while loading
                                      padding: EdgeInsets.zero,
                                      itemBuilder: (context, index) =>
                                          const EpisodeItemShimmer(),
                                    ),
                                    error: (err, stack) => Center(
                                        child: Text('Error: $err',
                                            style: const TextStyle(
                                                color: Colors.red))),
                                    data: (seasonData) {
                                      final episodes =
                                          seasonData.episodes ?? [];
                                      if (episodes.isEmpty) {
                                        return const Center(
                                          child: Text(
                                            'No episodes available for this season.',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        );
                                      }

                                      // Build the list using fetched episode data
                                      return ListView.builder(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount: episodes.length,
                                        padding: EdgeInsets.zero,
                                        itemBuilder: (context, episodeIndex) {
                                          final episode =
                                              episodes[episodeIndex];
                                          // Replace ListTile with custom EpisodeItem
                                          return EpisodeItem(
                                            episode: episode,
                                            onTap: () {
                                              // TODO: Implement episode action
                                            },
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                              );
                            }),
                          ),
                        ),
                      ],
                      const SizedBox(height: 30),
                      RecommendationsSection(
                        mediaId: widget.id,
                        mediaType: widget.mediaType,
                      ),
                      const SizedBox(height: 30), // Ensure some bottom padding
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
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

// New Shimmer Placeholder Widget
class EpisodeItemShimmer extends StatelessWidget {
  const EpisodeItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    const double itemHeight = 100.0;
    const double imageWidth = itemHeight * (16 / 9);

    return Shimmer.fromColors(
      baseColor: Colors.grey[800]!,
      highlightColor: Colors.grey[700]!,
      child: Container(
        height: itemHeight,
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Placeholder
            Container(
              width: imageWidth,
              height: itemHeight,
              decoration: BoxDecoration(
                color: Colors.white, // Base color for shimmer
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
            const SizedBox(width: 12),
            // Text Placeholders
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 16.0, // Approx height of title text
                      color: Colors.white,
                    ),
                    const SizedBox(height: 8), // Space between lines
                    Container(
                      width: MediaQuery.of(context).size.width *
                          0.4, // Shorter width for description
                      height: 14.0, // Approx height of description text
                      color: Colors.white,
                    ),
                    const SizedBox(height: 4), // Space between lines
                    Container(
                      width: MediaQuery.of(context).size.width *
                          0.3, // Shorter width for description line 2
                      height: 14.0, // Approx height of description text
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// New custom widget for displaying an episode item
class EpisodeItem extends StatelessWidget {
  final Episode episode;
  final VoidCallback? onTap;

  const EpisodeItem({
    super.key,
    required this.episode,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    const double itemHeight = 105.0;
    const double imageWidth =
        itemHeight * (16 / 11); // Maintain 16:9 aspect ratio
    const String imageBaseUrl =
        'https://image.tmdb.org/t/p/w400'; // Use w300 for better quality

    return InkWell(
      onTap: onTap,
      child: Container(
        height: itemHeight,
        margin: const EdgeInsets.symmetric(vertical: 6), // Add vertical spacing
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Left side: Image with overlay and play button
            SizedBox(
              width: imageWidth,
              height: itemHeight,
              child: Stack(
                fit: StackFit.expand, // Make stack children fill the SizedBox
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: CachedNetworkImage(
                      imageUrl: episode.stillPath != null &&
                              episode.stillPath!.isNotEmpty
                          ? '$imageBaseUrl${episode.stillPath}'
                          : '', // Handle null/empty path
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: Colors.grey[800],
                        child: const Center(
                            child: Icon(Icons.image, color: Colors.grey)),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey[800],
                        child: const Center(
                            child:
                                Icon(Icons.tv, color: Colors.grey, size: 30)),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.black
                            .withOpacity(0.5), // Semi-transparent background
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Amicons.iconly_play_broken,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                  // Add runtime chip at the bottom right
                ],
              ),
            ),
            const SizedBox(width: 12), // Spacing between image and text
            // Right side: Title and Description
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 4.0), // Padding for text
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center text vertically
                  children: [
                    Text(
                      'E${episode.episodeNumber}: ${episode.name ?? 'Unnamed Episode'}',

                      style: GoogleFonts.quicksand(
                        color: Colors.white,
                        fontSize: 16, // Slightly smaller font
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 1, // Allow title to wrap to 2 lines
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      episode.overview ?? 'No description available.',
                      style: GoogleFonts.quicksand(
                        color: Colors.grey[400],
                        fontSize: 12, // Smaller font for description
                      ),
                      maxLines: 2, // Limit description lines
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    if (episode.runtime != null && episode.runtime! > 0)
                      Text(
                        '${episode.runtime} mins',
                        style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Amicons.iconly_download_broken),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
