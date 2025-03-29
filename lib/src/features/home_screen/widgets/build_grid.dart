import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class BuildGrid extends StatelessWidget {
  const BuildGrid({
    super.key,
    required this.title,
    this.results,
    this.onScrollEnd,
    this.isLoading = false,
  });

  final String title;
  final List<MediaModel>? results;
  final VoidCallback? onScrollEnd;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification is ScrollEndNotification &&
            scrollNotification.metrics.extentAfter == 0) {
          onScrollEnd?.call();
        }
        return false;
      },
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 4,
          mainAxisSpacing: 8,
        ),
        itemCount: (results?.length ?? 0) + 4,
        itemBuilder: (context, index) {
          if (index < (results?.length ?? 0)) {
            final item = results![index];
            return CachedNetworkImage(
              fadeInDuration: const Duration(milliseconds: 50),
              imageUrl:
                  "http://image.tmdb.org/t/p/original/${item.posterPath ?? ""}",
              errorWidget: (context, url, error) =>
                  Center(child: Text(item.title ?? item.name ?? "")),
              progressIndicatorBuilder: (context, url, progress) => Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              imageBuilder: (context, imageProvider) => ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }
        },
      ),
    );
  }
}
