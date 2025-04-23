import 'dart:developer';

import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamline/src/features/home_screen/home_provider.dart';
import 'package:streamline/src/features/search/search_ui.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:streamline/src/widgets/parallax_carousel.dart'; // Import the new widget
import 'package:streamline/src/widgets/sliding_bottom_nav_bar.dart'; // Import the custom widget
import 'package:streamline/src/features/media/media_ui.dart'; // Import MediaUI
import 'package:domain/domain.dart'; // Import MediaModel
import 'package:streamline/src/features/library/library_ui.dart'; // Import LibraryScreen
import 'package:streamline/src/features/profile/profile_ui.dart'; // Import ProfileScreen
import 'package:streamline/src/features/home_screen/trending_ui.dart'; // Import TrendingUI

class HomeUI extends ConsumerStatefulWidget {
  const HomeUI({super.key});

  @override
  ConsumerState<HomeUI> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeUI> {
  int _currentIndex = 0;
  late PageController _pageController; // Add PageController
  late ScrollController _movieScrollController;
  late ScrollController _showScrollController;
  // Add scroll controller for carousel if needed, or handle pagination differently

  // Define items for the custom nav bar
  final List<SlidingBottomNavBarItem> _navBarItems = [
    SlidingBottomNavBarItem(
      icon: Amicons.iconly_home_broken, // Home icon using Amicons
      activeIcon: Amicons.iconly_home, // Filled home icon using Amicons
      activeColor: Colors.redAccent,
    ),
    SlidingBottomNavBarItem(
      icon: Amicons
          .iconly_category_broken, // Library icon using Amicons (category as proxy)
      activeIcon: Amicons.iconly_category, // Filled Library icon using Amicons
      activeColor: Colors.blueAccent,
    ),
    SlidingBottomNavBarItem(
      icon: Amicons.iconly_search_broken, // Search icon using Amicons
      activeIcon: Amicons.iconly_search, // Filled search icon using Amicons
      activeColor: Colors.greenAccent,
    ),
    SlidingBottomNavBarItem(
      icon: Amicons.iconly_profile_broken, // Profile icon using Amicons
      activeIcon: Amicons.iconly_profile, // Filled profile icon using Amicons
      activeColor: Colors.purpleAccent,
    ),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // Initialize PageController
    _movieScrollController = ScrollController();
    _showScrollController = ScrollController();

    // Fetch initial data
    fetchAndUpdateMovies(ref);
    fetchAndUpdateShows(ref);
    fetchAndUpdateCarouselMedia(ref); // Fetch initial carousel data

    // Add listeners for pagination
    _movieScrollController.addListener(_onMovieScroll);
    _showScrollController.addListener(_onShowScroll);
    // Add listener for carousel pagination if needed
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose PageController
    _movieScrollController.removeListener(_onMovieScroll);
    _showScrollController.removeListener(_onShowScroll);
    _movieScrollController.dispose();
    _showScrollController.dispose();
    super.dispose();
  }

  void _onMovieScroll() {
    if (_movieScrollController.position.pixels >=
        _movieScrollController.position.maxScrollExtent - 200) {
      // Check if already fetching to avoid multiple calls
      // (You might need a state variable like _isFetchingMovies)
      fetchAndUpdateMovies(ref);
    }
  }

  void _onShowScroll() {
    if (_showScrollController.position.pixels >=
        _showScrollController.position.maxScrollExtent - 200) {
      // Check if already fetching to avoid multiple calls
      // (You might need a state variable like _isFetchingShows)
      fetchAndUpdateShows(ref);
    }
  }

  @override
  Widget build(BuildContext context) {
    final movies = ref.watch(trendingMoviesProvider);
    final shows = ref.watch(trendingShowsProvider); // Watch shows provider
    final carouselMedia =
        ref.watch(carouselMediaProvider); // Watch carousel provider

    // Extract image URLs for carousel
    final imageUrls = carouselMedia
        .map((media) => media.backdropPath != null
            ? 'https://image.tmdb.org/t/p/original${media.backdropPath}'
            : 'https://via.placeholder.com/1280x720?text=No+Image')
        .toList();

    // Extract titles for carousel
    final titles = carouselMedia
        .map((media) =>
            media.title ??
            media.name ??
            'No Title') // Provide default if title is null
        .toList();

    // Extract descriptions for carousel
    final descriptions = carouselMedia
        .map((media) =>
            media.overview ??
            '') // Provide default empty string if overview is null
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'StreamLine',
          style: GoogleFonts.quicksand(
              fontSize: 20, fontWeight: FontWeight.bold), // Style the app name
        ),
        centerTitle: true, // Center the title
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: PageView(
        // Replace SingleChildScrollView with PageView
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index; // Update index on swipe
          });
        },
        children: <Widget>[
          _buildHomeScreenContent(
              context,
              ref,
              movies,
              shows,
              carouselMedia, // Pass carouselMedia
              imageUrls,
              titles,
              descriptions),
          const LibraryScreen(), // Page 1: Library (Placeholder)
          SearchUi(), // Page 2: Search
          const ProfileScreen(), // Page 3: Profile (Placeholder)
        ],
      ),
      bottomNavigationBar: SlidingBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          // Animate to the selected page when bottom nav item is tapped
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeOutCubic,
          );
          // No need to call setState here as onPageChanged will handle it
        },
        items: _navBarItems,
        curve: Curves.easeOutCubic,
      ),
    );
  }

  // Extracted the home screen content into a separate method
  Widget _buildHomeScreenContent(
      BuildContext context,
      WidgetRef ref,
      List<MediaModel> movies,
      List<MediaModel> shows,
      List<MediaModel> carouselMedia, // Add carouselMedia parameter
      List<String> imageUrls,
      List<String> titles,
      List<String> descriptions) {
    // Add descriptions parameter
    // final movies = ref.watch(trendingMoviesProvider); // Already watched in build method
    // final shows = ref.watch(trendingShowsProvider); // Already watched in build method

    return SingleChildScrollView(
      // Keep SingleChildScrollView for the home content itself
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pass data from carouselMediaProvider to the ParallaxCarousel
          if (imageUrls.isNotEmpty)
            ParallaxCarousel(
              imageURLs: imageUrls,
              titles: titles, // Pass the extracted titles
              descriptions: descriptions, // Pass the extracted descriptions
              onTap: (index) {
                // Add onTap handler
                final media = carouselMedia[index]; // Use carouselMedia
                // Use mediaType from the specific media item
                final mediaType =
                    media.mediaType ?? 'movie'; // Default to movie if null
                if (media.id != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MediaUI(
                        mediaType, // Pass the correct media type
                        media.id!,
                      ), // Pass ID and type
                    ),
                  );
                } else {
                  log("Media ID is null, cannot navigate.");
                  // Optionally show a snackbar or message to the user
                }
              },
            )
          else
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(child: CircularProgressIndicator()),
            ),

          SizedBox(height: 24),

          // Trending Movies Section
          _buildMediaSection(
            context: context, // Pass context as named argument
            title: 'Trending Movies',
            mediaList: movies,
            scrollController: _movieScrollController,
            mediaType: 'movie', // Specify media type
          ),

          SizedBox(height: 24),

          // Trending TV Shows Section
          _buildMediaSection(
            context: context, // Pass context as named argument
            title: 'Trending TV Shows',
            mediaList: shows, // Use the passed shows list
            scrollController: _showScrollController,
            mediaType: 'tv', // Specify media type
          ),

          SizedBox(height: 20), // Add some bottom padding
        ],
      ),
    );
  }

  // Helper widget to build a media section (Movies or Shows)
  Widget _buildMediaSection({
    required BuildContext context,
    required String title,
    required List<MediaModel> mediaList,
    required ScrollController scrollController,
    required String mediaType, // Added mediaType parameter
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.quicksand(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to TrendingUI, passing the mediaType
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrendingUI(mediaType: mediaType),
                    ),
                  );
                  log('View All $title tapped, navigating to TrendingUI');
                },
                child: Text(
                  'View All',
                  style: GoogleFonts.quicksand(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueAccent, // Or your desired color
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12),
        SizedBox(
          height: 250, // Adjust height as needed
          child: mediaList.isEmpty
              ? Center(
                  child:
                      CircularProgressIndicator()) // Show loader if empty initially
              : ListView.builder(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: mediaList.length,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  itemBuilder: (context, index) {
                    final media = mediaList[index];
                    final posterPath = media.posterPath;
                    final imageUrl = posterPath != null
                        ? 'https://image.tmdb.org/t/p/original$posterPath'
                        : null;
                    return GestureDetector(
                      onTap: () {
                        if (media.id != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MediaUI(
                                mediaType, // Use the passed mediaType
                                media.id!,
                              ),
                            ),
                          );
                        } else {
                          log("$title ID is null, cannot navigate.");
                        }
                      },
                      child: Container(
                        width: 150, // Adjust width as needed
                        margin: EdgeInsets.only(right: 12.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: imageUrl != null
                              ? CachedNetworkImage(
                                  imageUrl: imageUrl,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Center(
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2.0)),
                                  errorWidget: (context, url, error) => Center(
                                      child: Icon(Icons.error,
                                          color: Colors.white54)),
                                )
                              : Center(
                                  child: Text('No Image',
                                      style: TextStyle(color: Colors.white54))),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
