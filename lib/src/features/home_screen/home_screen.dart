import 'package:amicons/amicons.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streamline/src/features/home_screen/home_screen_provider.dart';
import 'package:streamline/src/features/home_screen/widgets/build_grid.dart';
import 'package:streamline/src/features/search/search_ui.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    fetchAndUpdateMovies(ref);
    fetchAndUpdateShows(ref);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StreamLine'),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchUi(),
              ),
            ),
            icon: Icon(
              Amicons.iconly_search_broken,
              size: 18,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [
          Consumer(
            builder: (context, ref, child) {
              final movies = ref.watch(trendingMoviesProvider);
              return BuildGrid(
                title: 'Trending Movies',
                results: movies,
                onScrollEnd: () => fetchAndUpdateMovies(ref),
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final shows = ref.watch(trendingShowsProvider);
              return BuildGrid(
                title: 'Trending Shows',
                results: shows,
                onScrollEnd: () => fetchAndUpdateShows(ref),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: FlashyTabBar(
        height: 55,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        selectedIndex: _currentIndex,
        shadows: const [BoxShadow(color: Colors.black, blurRadius: 10)],
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
          });
          pageController.animateToPage(index,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeOutCubic);
        },
        items: [
          FlashyTabBarItem(
            icon: Icon(
              Amicons.iconly_video_broken,
              size: 22,
            ),
            activeColor: Colors.white,
            title: Text('Movies'),
          ),
          FlashyTabBarItem(
            icon: Icon(
              Amicons.iconly_activity_broken,
              size: 22,
            ),
            activeColor: Colors.white,
            title: Text('Shows'),
          ),
        ],
      ),
    );
  }
}
