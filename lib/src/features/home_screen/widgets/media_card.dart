import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:streamline/src/features/media_screen.dart/media_ui.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({super.key, required this.item});

  final MediaModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MediaUI(
            item.mediaType ?? "",
            item.id ?? 0,
          ),
        ),
      ),
      child: CachedNetworkImage(
        fadeInDuration: const Duration(milliseconds: 50),
        imageUrl: "http://image.tmdb.org/t/p/original/${item.posterPath ?? ""}",
        errorWidget: (context, url, error) =>
            Center(child: Text(item.title ?? item.name ?? "")),
        progressIndicatorBuilder: (context, url, progress) => Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 2),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        imageBuilder: (context, imageProvider) => ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.withValues(alpha: 2),
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
