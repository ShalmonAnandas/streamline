import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
// Add import for Amicons
import 'package:amicons/amicons.dart';
// Removed unused import: streamline/core/base_widget/riverpod_stateless_widget.dart
// Add import for MediaUI
import 'package:streamline/src/features/movie_mode/media/media_ui.dart';
import 'package:streamline/src/features/movie_mode/search/search_provider.dart';
// Import the custom RiverpodStatelessWidget if it's still needed elsewhere or refactor its usage
// Assuming RiverpodStatelessWidget is defined in a different path or refactored
// For simplicity, directly using Consumer widget here if RiverpodStatelessWidget is complex
// If RiverpodStatelessWidget is simple, ensure its import path is correct.

class SearchUi extends ConsumerStatefulWidget {
  const SearchUi({super.key});

  @override
  ConsumerState<SearchUi> createState() => _SearchUiState();
}

class _SearchUiState extends ConsumerState<SearchUi> {
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final searchResults =
        ref.watch(searchProvider(query: _query)); // Watch the provider directly

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0, // Add slight elevation
        shadowColor: Colors.black26, // Add shadow color
        automaticallyImplyLeading: true,
        title: TextField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search movies, TV shows...',
            hintStyle: GoogleFonts.quicksand(
              color: Colors.grey[600],
              fontSize: 16,
            ),
            prefixIcon: Icon(Amicons.iconly_search_curved,
                color: Colors.grey[600]), // Use Amicons.search
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
                    icon: Icon(Amicons.iconly_close_square_curved,
                        color: Colors.grey[
                            600]), // Use Amicons.close (assuming 'clear' maps to 'close')
                    onPressed: () {
                      _searchController.clear();
                      setState(() {
                        _query = ''; // Clear the debounced query as well
                      });
                      if (_debounce?.isActive ?? false)
                        _debounce!.cancel(); // Cancel debounce on clear
                    },
                  )
                : null, // Show clear button only when text exists
            filled: true, // Add fill color
            // White background for text field
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30), // More rounded corners
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(
                  color: Theme.of(context).primaryColor,
                  width: 1.5), // Highlight focus
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12.0, // Adjust padding
              horizontal: 16.0,
            ),
          ),
          onChanged: (value) {
            // Update suffix icon visibility immediately
            setState(() {});
            if (_debounce?.isActive ?? false) _debounce!.cancel();
            _debounce = Timer(const Duration(milliseconds: 500), () {
              // Slightly faster debounce
              if (mounted) {
                // Check if widget is still mounted
                setState(() {
                  _query = value.trim();
                });
              }
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _query.isEmpty
            ? Center(
                child: Column(
                  // Use Column for icon and text
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Amicons.iconly_search_broken,
                        size: 60, color: Colors.grey[400]),
                    const SizedBox(height: 16),
                    Text(
                      "Start typing to search",
                      style: GoogleFonts.quicksand(
                          fontSize: 18, color: Colors.grey[600]),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : searchResults.when(
                // Use .when for handling AsyncValue states
                data: (items) {
                  if (items == null || items.isEmpty) {
                    return Center(
                      child: Column(
                        // Use Column for icon and text
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Amicons.remix_error_warning,
                              size: 60, color: Colors.grey[400]),
                          const SizedBox(height: 16),
                          Text(
                            "No results found for '$_query'",
                            style: GoogleFonts.quicksand(
                                fontSize: 18, color: Colors.grey[600]),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }

                  final int crossAxisCount =
                      orientation == Orientation.landscape ? 7 : 3;
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 12.0, // Increased spacing
                      mainAxisSpacing: 12.0, // Increased spacing
                      childAspectRatio: 2 / 3,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      final posterUrl = item.posterPath != null
                          ? 'https://image.tmdb.org/t/p/w500${item.posterPath}'
                          : null; // Handle null poster path

                      return GestureDetector(
                        onTap: () {
                          if (item.mediaType != null && item.id != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MediaUI(
                                  item.mediaType!,
                                  item.id!,
                                ),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Missing media details.')),
                            );
                          }
                        },
                        child: Card(
                          // Wrap image in a Card
                          elevation: 2.0,
                          clipBehavior:
                              Clip.antiAlias, // Clip the image to card shape
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                12.0), // Rounded corners for card
                          ),
                          child: posterUrl != null
                              ? Image.network(
                                  posterUrl,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Center(
                                    child: Icon(Amicons.iconly_image_broken,
                                        size: 60, color: Colors.grey[400]),
                                  ),
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                        strokeWidth: 2.0,
                                      ),
                                    );
                                  },
                                )
                              : Container(
                                  // Placeholder for missing poster
                                  color: Colors.grey[200],
                                  child: Center(
                                    child: Icon(Amicons.remix_movie,
                                        size: 40, color: Colors.grey[400]),
                                  ),
                                ),
                        ),
                      );
                    },
                  );
                },
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error, stackTrace) => Center(
                  child: Column(
                    // Use Column for icon and text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Amicons.remix_error_warning,
                          size: 60, color: Colors.grey[400]),
                      const SizedBox(height: 16),
                      Text(
                        'Error loading results: $error',
                        style: GoogleFonts.quicksand(
                            fontSize: 16, color: Colors.red[700]),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }
}
