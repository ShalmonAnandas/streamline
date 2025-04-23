import 'package:cached_network_image/cached_network_image.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MediaAppBar extends StatelessWidget {
  final MediaDetailsModel model;
  final double screenWidth;
  final double screenHeight;

  const MediaAppBar({
    super.key,
    required this.model,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image with Blurhash placeholder
        SizedBox(
          width: screenWidth,
          height: screenHeight * 0.5, // Slightly taller image
          child: CachedNetworkImage(
            imageUrl:
                'http://image.tmdb.org/t/p/original/${model.backdropPath ?? model.posterPath ?? ""}',
            fit: BoxFit.cover,
            placeholder: (context, url) => Container(
              color: Colors.grey.shade900,
              child: const Center(
                  child: CircularProgressIndicator(color: Colors.white38)),
            ),
            errorWidget: (context, url, error) => Container(
              color: Colors.grey.shade900,
              child: const Icon(Icons.broken_image,
                  color: Colors.white38, size: 48),
            ),
          ),
        ),
        // Enhanced Gradient overlay
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.1),
                  const Color(0xFF0F0F0F).withOpacity(0.8),
                  const Color(0xFF0F0F0F),
                ],
                stops: const [0.0, 0.4, 0.8, 1.0], // Smoother transition
              ),
            ),
          ),
        ),
        // Frosted Glass effect for top buttons background
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ClipRect(
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 5,
                  bottom: 10,
                ),
                color: Colors.black.withOpacity(0.15), // Subtle background
              ),
            ),
          ),
        ),
        // Back Button with slight shadow
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: Colors.white,
                shadows: [Shadow(color: Colors.black54, blurRadius: 4.0)]),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        // More Options Button with slight shadow
        Positioned(
          top: MediaQuery.of(context).padding.top + 10,
          right: 10,
          child: IconButton(
            icon: const Icon(Icons.more_vert,
                color: Colors.white,
                shadows: [Shadow(color: Colors.black54, blurRadius: 4.0)]),
            onPressed: () {
              // TODO: Implement more options action
            },
          ),
        ),
      ],
    );
  }
}
