import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleAndMetadata extends StatelessWidget {
  final String title;
  final String year;
  final Widget ratingWidget;
  final String duration;

  const TitleAndMetadata({
    super.key,
    required this.title,
    required this.year,
    required this.ratingWidget,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        Text(
          title,
          style: GoogleFonts.quicksand(
              fontSize: 26, // Slightly larger
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                // Subtle text shadow for depth
                Shadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 2,
                    offset: const Offset(1, 1))
              ]),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 10),
        // Year | Rating | Duration Row
        Row(
          children: [
            Text(
              year,
              style: GoogleFonts.quicksand(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
            const SizedBox(width: 10),
            const Text('•',
                style: TextStyle(
                    color: Colors.white38, fontSize: 14)), // Dot separator
            const SizedBox(width: 10),
            ratingWidget,
            const SizedBox(width: 10),
            const Text('•',
                style: TextStyle(
                    color: Colors.white38, fontSize: 14)), // Dot separator
            const SizedBox(width: 10),
            Text(
              duration,
              style: GoogleFonts.quicksand(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
