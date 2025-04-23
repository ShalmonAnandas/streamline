import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamline/core/base_widget/riverpod_stateless_widget.dart';
import 'package:streamline/src/features/search/search_provider.dart';

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: TextField(
          onTapOutside: (event) => FocusScope.of(context).unfocus(),
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: GoogleFonts.quicksand(
              color: Colors.grey,
              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14.0,
              horizontal: 16.0,
            ),
          ),
          onChanged: (value) {
            if (_debounce?.isActive ?? false) _debounce!.cancel();
            _debounce = Timer(const Duration(milliseconds: 800), () {
              setState(() {
                _query = value.trim();
              });
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _query
                .isEmpty // Use _query instead of _searchController.text for debounced state
            ? Center(child: Text("Start Typing to search"))
            : RiverpodStatelessWidget(
                provider: searchProvider(query: _query),
                // Assuming resultsModel has a 'results' list and each item has 'posterPath'
                // Also assuming 'resultsModel' is the actual data, not AsyncValue
                // Add type annotation if you know the exact type, e.g., RiverpodStatelessWidget<YourResultsType>
                child: (resultsModel) {
                  // TODO: Replace 'resultsModel.results' with your actual data structure
                  final items = resultsModel ?? [];

                  if (items.isEmpty) {
                    return Center(
                        child: Text("No results found for '$_query'"));
                  }

                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Adjust number of columns as needed
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio:
                          2 / 3, // Common aspect ratio for posters
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      // TODO: Replace 'item.posterPath' with your actual poster path field
                      // TODO: Prepend the base URL for your image CDN if needed
                      final posterUrl =
                          'https://image.tmdb.org/t/p/w500${item.posterPath}';

                      // Basic image display, add error/loading handling as needed
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          posterUrl,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) =>
                              Container(
                                  color: Colors.grey[300],
                                  child: Icon(Icons.error)),
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(child: CircularProgressIndicator());
                          },
                        ),
                      );
                    },
                  );
                },
                // Optional: Add loading/error widgets if RiverpodStatelessWidget supports them

                errorWidget: (error, stackTrace) =>
                    Center(child: Text('Error: $error')),
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
