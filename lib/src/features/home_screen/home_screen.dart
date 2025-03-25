import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streamline/src/features/home_screen/home_screen_controller.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<ResultsModel> state =
        ref.watch(homeScreenControllerProvider);
    return Scaffold(
      body: state.when(
        data: (resultsModel) {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.7),
            itemCount: resultsModel.results?.length,
            itemBuilder: (context, index) {
              final movie = resultsModel.results![index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CachedNetworkImage(
                  fadeInDuration: Duration(milliseconds: 200),
                    imageUrl:
                        "http://image.tmdb.org/t/p/original/${movie.posterPath ?? ""}"),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
