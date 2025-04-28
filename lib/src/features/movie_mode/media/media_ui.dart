import 'package:amicons/amicons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';
import 'package:streamline/core/base_widget/riverpod_stateless_widget.dart';
import 'package:streamline/src/features/movie_mode/media/providers/media_provider.dart';
import 'package:flutter/gestures.dart'; // Import required for ScrollConfiguration

// Import new widgets
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
    // Use episode count from the Season object if available, otherwise estimate or fetch details
    // For now, we'll use a placeholder count or fetch details if needed.
    // Let's assume season.episodeCount is available from the initial fetch.
    final episodeCount =
        season.episodeCount ?? 5; // Default to 5 if null for calculation

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
    final orientation = MediaQuery.of(context).orientation; // Get orientation

    return RiverpodStatelessWidget<MediaDetailsModel>(
      provider: MediaDetailsProvider(GetMediaDetailsParams(
        widget.id,
        widget.mediaType,
      )),
      child: (model) {
        final newSeasonCount = model.seasons?.length ?? 0;
        int previousIndex = _tabController.index;

        // Update TabController length if the season count has changed
        if (_tabController.length != newSeasonCount) {
          _tabController.removeListener(_onTabChanged);
          _tabController.dispose();
          _tabController = TabController(
            length: newSeasonCount,
            vsync: this,
            initialIndex: (previousIndex >= 0 && previousIndex < newSeasonCount)
                ? previousIndex
                : 0,
          );
          _tabController.addListener(_onTabChanged);
        }

        final double currentSeasonHeight = _calculateHeightForSeason(
          _tabController.index,
          model.seasons,
        );

        // Define content sections to avoid repetition
        final Widget titleAndMeta = TitleAndMetadata(
          title: model.title ?? model.name ?? 'No Title',
          year: _getYear(model.releaseDate ?? model.firstAirDate),
          ratingWidget: _buildStarRating(model.voteAverage),
          duration: _formatDuration(model.runtime),
        );
        final Widget genreChips = GenreChips(genres: model.genres);
        final Widget actionButtons = ActionButtons(media: model);
        final Widget storylineSection =
            StorylineSection(overview: model.overview);
        final Widget recommendationsSection = RecommendationsSection(
          mediaId: widget.id,
          mediaType: widget.mediaType,
        );

        // Build Episodes Section conditionally
        Widget buildEpisodesSection(Orientation orientation) {
          // Accept orientation
          if (widget.mediaType != 'movie' && newSeasonCount > 0) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min, // Important for Column in Row
              children: [
                const SizedBox(height: 36),
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
                            'Season \${index + 1}');
                  }),
                ),
                const SizedBox(height: 16),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  // Adjust height calculation if GridView items have different heights
                  height: orientation == Orientation.portrait
                      ? currentSeasonHeight // Use existing calculation for portrait
                      : _calculateGridHeightForSeason(
                          // New calculation for landscape grid
                          _tabController.index,
                          model.seasons,
                          screenWidth, // Pass screen width for grid calculation
                        ),
                  child: TabBarView(
                    controller: _tabController,
                    children:
                        List<Widget>.generate(newSeasonCount, (seasonIndex) {
                      final season = model.seasons?[seasonIndex];
                      if (season == null || season.seasonNumber == null) {
                        return const Center(
                          child: Text(
                            'Season data unavailable.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        );
                      }
                      final seasonProvider = seasonDetailsProvider(
                        GetSeasonDetailsParams(
                          widget.id,
                          season.seasonNumber!,
                        ),
                      );
                      return Consumer(
                        builder: (context, ref, child) {
                          final seasonDetailsAsync = ref.watch(seasonProvider);
                          return seasonDetailsAsync.when(
                            loading: () => orientation == Orientation.portrait
                                ? ListView.builder(
                                    // Shimmer List for Portrait
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 5, // Placeholder count
                                    padding: EdgeInsets.zero,
                                    itemBuilder: (context, index) =>
                                        const EpisodeItemShimmer(),
                                  )
                                : GridView.builder(
                                    // Shimmer Grid for Landscape
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: 6, // Placeholder count for grid
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: 16 / 6,
                                    ),
                                    itemBuilder: (context, index) =>
                                        const EpisodeItemShimmer(), // Reuse shimmer, might need adjustment for grid
                                  ),
                            error: (err, stack) => Center(
                                child: Text('Error: \$err',
                                    style: const TextStyle(color: Colors.red))),
                            data: (seasonData) {
                              final episodes = seasonData.episodes ?? [];
                              if (episodes.isEmpty) {
                                return const Center(
                                  child: Text(
                                    'No episodes available for this season.',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                );
                              }
                              // Conditional builder based on orientation
                              if (orientation == Orientation.portrait) {
                                return ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: episodes.length,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, episodeIndex) {
                                    final episode = episodes[episodeIndex];
                                    return EpisodeItem(
                                      episode: episode,
                                      onTap: () {
                                        // TODO: Implement episode action
                                      },
                                    );
                                  },
                                );
                              } else {
                                // Landscape: Use GridView.builder
                                return GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: episodes.length,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          4), // Add some padding for grid
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    childAspectRatio: 16 / 6,
                                  ),
                                  itemBuilder: (context, episodeIndex) {
                                    final episode = episodes[episodeIndex];
                                    return EpisodeItem(
                                      episode: episode,
                                      onTap: () {
                                        // TODO: Implement episode action
                                      },
                                    );
                                  },
                                );
                              }
                            },
                          );
                        },
                      );
                    }),
                  ),
                ),
              ],
            );
          } else {
            return const SizedBox.shrink(); // Return empty space if not TV show
          }
        }

        // Poster Widget (extracted logic from MediaAppBar)
        Widget buildPoster() {
          // Use screen height/width for aspect ratio calculation if needed
          // For landscape, let's aim for roughly half the screen width
          final posterWidth = orientation == Orientation.landscape
              ? screenWidth * 0.70 // Adjust fraction as needed
              : screenWidth;
          // Calculate height based on a common aspect ratio (e.g., 2:3)
          final posterHeight = orientation == Orientation.landscape
              ? screenHeight // Adjust fraction as needed
              : screenHeight * 0.5; // Keep portrait height

          return SizedBox(
            width: posterWidth,
            height: posterHeight,
            child: Stack(
              fit: StackFit.expand,
              children: [
                model.posterPath != null
                    ? CachedNetworkImage(
                        imageUrl:
                            'https://image.tmdb.org/t/p/original/${model.backdropPath}',
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Shimmer.fromColors(
                          baseColor: Colors.grey[850]!,
                          highlightColor: Colors.grey[800]!,
                          child: Container(color: Colors.white),
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error, color: Colors.red),
                      )
                    : Container(
                        color: Colors.grey[900],
                        child: const Center(
                            child: Icon(Icons.movie,
                                color: Colors.grey, size: 50)),
                      ),
                // Gradient overlay
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        const Color(0xFF0F0F0F).withOpacity(0.8),
                        const Color(0xFF0F0F0F),
                      ],
                      begin: orientation == Orientation.landscape
                          ? Alignment.centerLeft
                          : Alignment.topCenter,
                      end: orientation == Orientation.landscape
                          ? Alignment.centerRight
                          : Alignment.bottomCenter,
                      stops: orientation == Orientation.landscape
                          ? [0.3, 0.6, 1.0]
                          : [0.5, 0.8, 1.0],
                    ),
                  ),
                ),
                if (orientation == Orientation.landscape)
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          const Color(0xFF0F0F0F).withOpacity(0.8),
                          const Color(0xFF0F0F0F),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.7, 0.9, 0.95],
                      ),
                    ),
                  ),
                // Back button (only needed in portrait here, handled differently in landscape)
                if (orientation == Orientation.portrait)
                  Positioned(
                    top: MediaQuery.of(context).padding.top + 10,
                    left: 10,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
              ],
            ),
          );
        }

        // --- Build Layout based on Orientation ---
        return Scaffold(
          backgroundColor: const Color(0xFF0F0F0F),
          // Use ScrollConfiguration to allow scrolling with mouse drag on desktop/web
          body: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: SingleChildScrollView(
              child: orientation == Orientation.portrait
                  ? _buildPortraitLayout(
                      context,
                      model,
                      buildPoster(), // Pass the poster widget
                      titleAndMeta,
                      genreChips,
                      actionButtons,
                      storylineSection,
                      buildEpisodesSection(orientation), // Pass orientation
                      recommendationsSection,
                    )
                  : _buildLandscapeLayout(
                      context,
                      model,
                      buildPoster(), // Pass the poster widget
                      titleAndMeta,
                      genreChips,
                      actionButtons,
                      storylineSection,
                      buildEpisodesSection(orientation), // Pass orientation
                      recommendationsSection,
                      screenWidth, // Pass screenWidth for layout calculations
                      screenHeight, // Pass screenHeight
                    ),
            ),
          ),
        );
      },
    );
  }

  // --- Portrait Layout ---
  Widget _buildPortraitLayout(
    BuildContext context,
    MediaDetailsModel model,
    Widget posterWidget,
    Widget titleAndMeta,
    Widget genreChips,
    Widget actionButtons,
    Widget storylineSection,
    Widget episodesSection,
    Widget recommendationsSection,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        posterWidget, // Use the passed poster widget
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(
              top: 16.0), // Adjust top padding as poster handles status bar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleAndMeta,
              const SizedBox(height: 16),
              genreChips,
              const SizedBox(height: 28),
              actionButtons,
              const SizedBox(height: 36),
              storylineSection,
              episodesSection, // Conditionally built episodes section
              const SizedBox(height: 30),
              recommendationsSection,
              const SizedBox(height: 30), // Bottom padding
            ],
          ),
        ),
      ],
    );
  }

  // --- Landscape Layout ---
  Widget _buildLandscapeLayout(
    BuildContext context,
    MediaDetailsModel model,
    Widget posterWidget,
    Widget titleAndMeta,
    Widget genreChips,
    Widget actionButtons,
    Widget storylineSection,
    Widget episodesSection,
    Widget recommendationsSection,
    double screenWidth,
    double screenHeight,
  ) {
    // Add a SafeArea here to handle notches/system UI in landscape
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            // fit: StackFit.expand,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side: Poster

              SizedBox(
                width: screenWidth, // Adjust as needed
                height: screenHeight *
                    1.2, // Adjust to fit content height potentially
                child: posterWidget, // Use the passed poster widget
              ),

              // Right side: Details, Actions, Episodes
              SizedBox(
                width: screenWidth * 0.60,
                child: SingleChildScrollView(
                  // Make right side scrollable independently
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon:
                              const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),

                      const SizedBox(height: 10), // Space below back button
                      titleAndMeta,
                      const SizedBox(height: 16),
                      genreChips,
                      const SizedBox(height: 28),
                      actionButtons,
                      const SizedBox(height: 36),
                      storylineSection,
                      episodesSection,
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Recommendations below the Row, spanning full width
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 30),
            child: recommendationsSection,
          ),
          const SizedBox(height: 30), // Bottom padding
        ],
      ),
    );
  }

  // Helper to calculate height for GridView based on items and cross axis count
  double _calculateGridHeightForSeason(
      int seasonIndex, List<Season>? seasons, double screenWidth) {
    const double maxCrossAxisExtent = 400;
    const double childAspectRatio = 16 / 7;
    const double mainAxisSpacing = 8;
    const double itemHeight = maxCrossAxisExtent /
        childAspectRatio; // Calculate item height based on width and aspect ratio

    if (seasons == null ||
        seasons.isEmpty ||
        seasonIndex < 0 ||
        seasonIndex >= seasons.length) {
      return itemHeight + mainAxisSpacing; // Default height for one row
    }

    final season = seasons[seasonIndex];
    final episodeCount = season.episodeCount ?? 5; // Default estimate

    if (episodeCount == 0) {
      return itemHeight +
          mainAxisSpacing; // Min height for "no episodes" message row
    }

    // Calculate how many items fit horizontally
    // Subtract padding if GridView has horizontal padding
    final availableWidth = screenWidth - 8; // Assuming 4 padding on each side
    final crossAxisCount = (availableWidth / (maxCrossAxisExtent + 8))
        .floor(); // +8 for crossAxisSpacing
    final effectiveCrossAxisCount =
        crossAxisCount > 0 ? crossAxisCount : 1; // Ensure at least 1 column

    // Calculate number of rows needed
    final rowCount = (episodeCount / effectiveCrossAxisCount).ceil();

    // Calculate total height: (rows * itemHeight) + ((rows - 1) * spacing)
    // Add extra spacing if needed (e.g., top/bottom padding of the grid itself)
    return (rowCount * itemHeight) + ((rowCount - 1) * mainAxisSpacing);
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
