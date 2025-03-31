import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:streamline/src/features/home_screen/widgets/media_card.dart';

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
            return MediaCard(item: results![index]);
          } else {
            return Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 2),
                borderRadius: BorderRadius.circular(8),
              ),
            );
          }
        },
      ),
    );
  }
}
