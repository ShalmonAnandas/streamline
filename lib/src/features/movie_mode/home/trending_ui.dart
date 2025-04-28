import 'package:amicons/amicons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streamline/src/features/movie_mode/home/home_provider.dart';
import 'package:streamline/src/features/movie_mode/media/media_ui.dart';

const String imageBaseUrl = 'https://image.tmdb.org/t/p/original';

class TrendingUI extends ConsumerStatefulWidget {
  final String mediaType; // 'movie' or 'tv'

  const TrendingUI({
    super.key,
    required this.mediaType,
  });

  @override
  ConsumerState<TrendingUI> createState() => _TrendingUIState();
}

class _TrendingUIState extends ConsumerState<TrendingUI> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false; // To prevent multiple simultaneous fetches

  @override
  void initState() {
    super.initState();
    // Fetch initial data if the list is empty
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _fetchInitialData();
    });
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _fetchInitialData() async {
    final provider = _getProvider();
    final list = ref.read(provider);
    if (list.isEmpty) {
      // Use await here to ensure initial data is loaded before potentially showing the grid
      await _fetchMoreData();
    }
  }

  Future<void> _fetchMoreData() async {
    if (_isLoadingMore) return;

    // Check mounted state before calling setState
    if (mounted) {
      setState(() {
        _isLoadingMore = true;
      });
    }

    try {
      if (widget.mediaType == 'movie') {
        await fetchAndUpdateMovies(ref);
      } else if (widget.mediaType == 'tv') {
        await fetchAndUpdateShows(ref);
      }
    } catch (e) {
      // Handle error appropriately, e.g., show a snackbar
      debugPrint('Error fetching more data: $e');
      // Optionally show a snackbar or other user feedback
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(content: Text('Error loading more items: $e')),
      // );
    } finally {
      if (mounted) {
        setState(() {
          _isLoadingMore = false;
        });
      }
    }
  }

  void _onScroll() {
    // Check if the scroll controller has clients before accessing position
    if (!_scrollController.hasClients) return;
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent * 0.9 && // Near the end
        !_isLoadingMore) {
      _fetchMoreData();
    }
  }

  StateProvider<List<MediaModel>> _getProvider() {
    return widget.mediaType == 'movie'
        ? trendingMoviesProvider
        : trendingShowsProvider;
  }

  @override
  Widget build(BuildContext context) {
    final mediaList = ref.watch(_getProvider());

    // Determine the title based on mediaType
    final String title =
        widget.mediaType == 'movie' ? 'Trending Movies' : 'Trending TV Shows';

    return Scaffold(
      // Wrap with Scaffold
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Amicons.iconly_arrow_left),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
        // Add AppBar
        title: Text(
          title,
          style: GoogleFonts.quicksand(),
        ),
      ),
      body:
          Builder(// Use Builder to get context for ScaffoldMessenger if needed
              builder: (context) {
        // Show a loading indicator initially if the list is empty and we are fetching
        // Check _isLoadingMore specifically for the initial load case
        final bool isInitialLoading = mediaList.isEmpty && _isLoadingMore;
        if (isInitialLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // Handle case where list is empty after attempting to load
        if (mediaList.isEmpty && !_isLoadingMore) {
          return Center(
            child: Text(
              'No ${widget.mediaType}s found.',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          );
        }

        return GridView.builder(
          controller: _scrollController,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Adjust number of columns as needed
            childAspectRatio: 0.7, // Adjust aspect ratio for posters
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: mediaList.length +
              (_isLoadingMore ? 1 : 0), // Add space for loader if loading more
          itemBuilder: (context, index) {
            // Show loader at the bottom only when loading more, not initial load
            if (index == mediaList.length &&
                _isLoadingMore &&
                !isInitialLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            // Avoid index out of bounds if list is empty during initial load but itemCount is 1
            if (index >= mediaList.length) {
              return const SizedBox.shrink(); // Or some placeholder
            }

            final media = mediaList[index];
            final posterPath = media.posterPath;
            final imageUrl = '$imageBaseUrl$posterPath'; // Construct full URL

            return InkWell(
              // Wrap Card with InkWell for tap detection
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MediaUI(
                        widget.mediaType, media.id ?? 0), // Navigate to MediaUI
                  ),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: posterPath != null && posterPath.isNotEmpty
                    ? CachedNetworkImage(
                        // Replace Image.network with InstantNetworkImage
                        imageUrl: imageUrl,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) {
                          // Provide an error widget
                          debugPrint('Error loading image: $error');
                          return const Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.broken_image),
                              SizedBox(height: 4),
                              Text('No Image', style: TextStyle(fontSize: 10)),
                            ],
                          ));
                        },
                      )
                    : Center(
                        // Placeholder if no poster
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(widget.mediaType == 'movie'
                              ? Icons.movie
                              : Icons.tv),
                          const SizedBox(height: 4),
                          const Text('No Poster',
                              style: TextStyle(fontSize: 10)),
                        ],
                      )),
              ),
            );
          },
          padding: const EdgeInsets.all(8.0),
        );
      }),
    );
  }
}
