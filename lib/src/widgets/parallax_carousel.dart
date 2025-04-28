// ignore_for_file: deprecated_member_use

import 'dart:async'; // Import Timer
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts
import 'dart:developer' as developer; // Import developer for logging
import '../../core/service/image_cache_service.dart'; // Import the image cache service

class ParallaxCarousel extends StatefulWidget {
  final List<String> imageURLs;
  final List<String> titles; // Add titles list
  final List<String> descriptions; // Add descriptions list
  final Function(int index)? onTap; // Add onTap callback
  final bool autoScroll; // Add autoScroll flag
  final Duration autoScrollDuration; // Add duration for autoScroll

  const ParallaxCarousel({
    super.key, // Use super.key
    required this.imageURLs,
    required this.titles, // Require titles
    required this.descriptions, // Require descriptions
    this.onTap, // Make onTap optional
    this.autoScroll = false, // Default to false
    this.autoScrollDuration = const Duration(seconds: 5), // Default duration
  });

  @override
  State<ParallaxCarousel> createState() => _ParallaxCarouselState();
}

class _ParallaxCarouselState extends State<ParallaxCarousel> {
  late final PageController _pageController;
  double _currentPage = 0.0;
  int _lastPreloadedPage = -1;
  Timer? _autoScrollTimer; // Timer for auto-scrolling
  bool _isUserInteracting = false; // Flag to track user interaction

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1.0);
    _pageController.addListener(_onScroll);

    // Initial preload
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && widget.imageURLs.isNotEmpty) {
        _preloadImages(_currentPage.round());
      }
      // Start auto-scroll if enabled
      if (widget.autoScroll && widget.imageURLs.length > 1) {
        _startAutoScrollTimer();
      }
    });
  }

  void _onScroll() {
    if (!_pageController.hasClients) return;
    final page = _pageController.page ?? 0.0;
    setState(() {
      _currentPage = page;
    });

    // Preload based on the nearest integer page index
    int currentPageIndex = page.round();
    // Only preload if the rounded page index changes to avoid excessive calls
    if (currentPageIndex != _lastPreloadedPage) {
      _preloadImages(currentPageIndex);
      _lastPreloadedPage = currentPageIndex;
    }
  }

  // Function to preload images around a given index
  void _preloadImages(int index) {
    // Preload range (e.g., 1 image before and 1 after)
    int preloadRange = 1;
    for (int i = -preloadRange; i <= preloadRange; i++) {
      if (i == 0) continue; // Don't preload the current image itself
      int preloadIndex = index + i;
      // Check bounds
      if (preloadIndex >= 0 && preloadIndex < widget.imageURLs.length) {
        ImageCacheService().preloadImage(widget.imageURLs[preloadIndex]);
      }
    }
  }

  // Function to start the auto-scroll timer
  void _startAutoScrollTimer() {
    _stopAutoScrollTimer(); // Ensure any existing timer is stopped
    if (!mounted || !widget.autoScroll || _isUserInteracting) return;

    _autoScrollTimer = Timer.periodic(widget.autoScrollDuration, (timer) {
      if (!mounted || _isUserInteracting || !_pageController.hasClients) {
        timer.cancel(); // Stop timer if state changes unfavorably
        return;
      }

      int nextPage = (_currentPage.round() + 1) % widget.imageURLs.length;
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 600), // Animation duration
        curve: Curves.easeInOut, // Animation curve
      );
    });
  }

  // Function to stop the auto-scroll timer
  void _stopAutoScrollTimer() {
    _autoScrollTimer?.cancel();
    _autoScrollTimer = null;
  }

  @override
  void dispose() {
    _stopAutoScrollTimer(); // Stop timer on dispose
    _pageController.removeListener(_onScroll); // Remove listener
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final carouselHeight = screenHeight * 0.65; // 65% of screen height

    if (widget.imageURLs.isEmpty) {
      return SizedBox(
        height: carouselHeight,
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    // Ensure titles list has the same length as imageURLs, handle potential mismatch
    final itemCount = widget.imageURLs.length;
    if (widget.titles.length != itemCount) {
      // Handle error or provide default titles
      developer.log("Error: imageURLs and titles list lengths do not match.",
          name: 'ParallaxCarousel');
      // Optionally return an error widget or use default titles
      // For now, we'll proceed but this might cause runtime errors if titles are accessed out of bounds
    }
    // Ensure descriptions list has the same length as imageURLs
    if (widget.descriptions.length != itemCount) {
      developer.log(
          "Error: imageURLs and descriptions list lengths do not match.",
          name: 'ParallaxCarousel');
      // Handle potential mismatch similarly if needed
    }

    return Column(
      children: [
        SizedBox(
          height: carouselHeight,
          // Listen for scroll notifications to pause auto-scroll on user interaction
          child: NotificationListener<ScrollNotification>(
            onNotification: (ScrollNotification notification) {
              if (!widget.autoScroll)
                return false; // Ignore if autoScroll is off

              if (notification is ScrollStartNotification) {
                if (notification.dragDetails != null) {
                  // User started dragging
                  setState(() {
                    _isUserInteracting = true;
                  });
                  _stopAutoScrollTimer();
                }
              } else if (notification is ScrollEndNotification) {
                // User stopped dragging or scroll ended
                // Use a short delay before restarting the timer
                Future.delayed(const Duration(seconds: 2), () {
                  if (mounted && _isUserInteracting) {
                    // Check if still interacting (might have changed)
                    setState(() {
                      _isUserInteracting = false;
                    });
                    _startAutoScrollTimer(); // Restart timer only if interaction truly ended
                  } else if (mounted && !_isUserInteracting) {
                    // If interaction already ended (e.g. programmatic scroll), ensure timer restarts if needed
                    _startAutoScrollTimer();
                  }
                });
              }
              return false; // Allow notification to bubble up
            },
            child: PageView.builder(
              controller: _pageController,
              itemCount: itemCount, // Use itemCount
              itemBuilder: (context, index) {
                // Calculate the difference between the current page and this page index
                double pageOffset = _currentPage - index;

                // Calculate alignment for parallax effect
                // The image moves slower than the page scroll
                // Adjust the multiplier (e.g., 0.4) to control the parallax intensity
                double parallaxAlignmentX = pageOffset *
                    -0.8; // Increased multiplier for more pronounced effect
                final title = (index < widget.titles.length)
                    ? widget.titles[index]
                    : ""; // Safe access to title
                final description = (index < widget.descriptions.length)
                    ? widget.descriptions[index]
                    : ""; // Safe access to description

                return GestureDetector(
                  // Wrap with GestureDetector
                  onTap: () => widget.onTap?.call(index), // Call onTap callback
                  child: ClipRRect(
                    child: Stack(
                      // Use Stack to overlay text
                      fit: StackFit.expand, // Make stack fill the ClipRRect
                      children: [
                        // Background Image
                        Container(
                          color: Colors.grey[800],
                          // Replace CachedNetworkImage with InstantNetworkImage
                          child: CachedNetworkImage(
                            imageUrl: widget.imageURLs[index],
                            alignment: Alignment(parallaxAlignmentX, 0.0),
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, progress) => Shimmer.fromColors(
                              baseColor: Colors.grey[800]!,
                              highlightColor: Colors.grey[700]!,
                              child: Container(
                                color: Colors.grey[800],
                              ),
                            ),
                            // Keep the error widget logic
                            errorWidget: (context, url, error) =>
                                const Center(child: Icon(Icons.error)),
                          ),
                        ),
                        // Title Overlay
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black.withOpacity(
                                      0.8), // Slightly darker gradient
                                  Colors.transparent,
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                stops: const [0.2, 1], // Adjust gradient stop
                              ),
                            ),
                            child: Column(
                              // Use Column to stack Title and Description
                              crossAxisAlignment:
                                  CrossAxisAlignment.start, // Align text left
                              mainAxisSize:
                                  MainAxisSize.min, // Take minimum space
                              children: [
                                Text(
                                  title,
                                  style: GoogleFonts.amarante(
                                    // Changed font to Montserrat
                                    color: Colors.white,
                                    fontSize: 40.0, // Slightly larger title
                                    fontWeight: FontWeight.bold,
                                    // shadows: [
                                    //   Shadow(
                                    //     blurRadius:
                                    //         5.0, // Increased shadow blur
                                    //     color: Colors.black.withOpacity(0.6),
                                    //     offset: const Offset(2.0, 2.0),
                                    //   ),
                                    // ],
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (description
                                    .isNotEmpty) // Show description only if available
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top:
                                            4.0), // Space between title and description
                                    child: Text(
                                      description,
                                      style: GoogleFonts.montserrat(
                                        // Use Montserrat for description too
                                        color: Colors.white.withOpacity(
                                            0.5), // Slightly transparent
                                        fontSize: 12.0, // Smaller font size
                                        fontWeight: FontWeight.w500,
                                        shadows: [
                                          // Lighter shadow for description
                                          Shadow(
                                            blurRadius: 3.0,
                                            color:
                                                Colors.black.withOpacity(0.4),
                                            offset: const Offset(1.0, 1.0),
                                          ),
                                        ],
                                      ),
                                      maxLines:
                                          3, // Allow more lines for description
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
