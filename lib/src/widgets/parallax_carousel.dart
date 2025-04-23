// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts
import 'dart:developer' as developer; // Import developer for logging
import 'instant_network_image.dart'; // Import the new widget
import '../../core/service/image_cache_service.dart'; // Import the image cache service

class ParallaxCarousel extends StatefulWidget {
  final List<String> imageURLs;
  final List<String> titles; // Add titles list
  final List<String> descriptions; // Add descriptions list
  final Function(int index)? onTap; // Add onTap callback

  const ParallaxCarousel({
    super.key, // Use super.key
    required this.imageURLs,
    required this.titles, // Require titles
    required this.descriptions, // Require descriptions
    this.onTap, // Make onTap optional
  });

  @override
  State<ParallaxCarousel> createState() => _ParallaxCarouselState();
}

class _ParallaxCarouselState extends State<ParallaxCarousel> {
  late final PageController _pageController;
  double _currentPage = 0.0;
  int _lastPreloadedPage =
      -1; // Track the last page for which preloading was triggered

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1.0);
    _pageController.addListener(_onScroll);

    // Initial preload for the first few images when the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && widget.imageURLs.isNotEmpty) {
        _preloadImages(_currentPage.round());
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

  @override
  void dispose() {
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
                        child: InstantNetworkImage(
                          imageUrl: widget.imageURLs[index],
                          alignment: Alignment(parallaxAlignmentX, 0.0),
                          fit: BoxFit.cover,
                          // Keep the placeholder logic
                          placeholder: (context, url) => Shimmer.fromColors(
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
                              vertical: 12.0, horizontal: 16.0),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withOpacity(
                                    0.8), // Slightly darker gradient
                                Colors.black.withOpacity(0.0),
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: const [0.0, 0.9], // Adjust gradient stop
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
                                  fontSize: 36.0, // Slightly larger title
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      blurRadius: 5.0, // Increased shadow blur
                                      color: Colors.black.withOpacity(0.6),
                                      offset: const Offset(2.0, 2.0),
                                    ),
                                  ],
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
                                          0.4), // Slightly transparent
                                      fontSize: 11.0, // Smaller font size
                                      fontWeight: FontWeight.w500,
                                      shadows: [
                                        // Lighter shadow for description
                                        Shadow(
                                          blurRadius: 3.0,
                                          color: Colors.black.withOpacity(0.4),
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
      ],
    );
  }
}
