import 'dart:math';

import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenreChips extends StatelessWidget {
  final List<Genre>? genres;

  const GenreChips({super.key, required this.genres});

  // Generate a gradient based on the genre name's hash code
  Gradient _getGradientForGenre(String genreName) {
    final random = Random(genreName.hashCode);
    final hue = random.nextDouble() * 360; // Generate a hue value (0-360)

    // Create two colors based on the hue with slight variations
    final color1 = HSLColor.fromAHSL(1.0, hue, 0.7, 0.6)
        .toColor(); // Higher saturation/lightness
    final color2 = HSLColor.fromAHSL(1.0, (hue + 30) % 360, 0.6, 0.5)
        .toColor(); // Shifted hue, slightly darker

    return LinearGradient(
      colors: [color1, color2],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }

  // Helper widget for genre chips
  Widget _buildGenreChip(String label) {
    final gradient = _getGradientForGenre(label);
    const double borderWidth = 1.0; // Define border width

    return Container(
      padding: const EdgeInsets.all(
          borderWidth), // This padding creates the border effect
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(20), // Match Chip's border radius
      ),
      child: Chip(
        label: Text(label),
        labelStyle: GoogleFonts.quicksand(
            color: Colors.white.withOpacity(0.9),
            fontSize: 12,
            fontWeight: FontWeight.w500),
        backgroundColor:
            Colors.black.withOpacity(0.5), // Inner background color
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(20 - borderWidth), // Adjust inner radius
          // Remove the original side border
          // side: BorderSide(
          //     color: Colors.white.withOpacity(0.2), width: 0.5),
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 6.0,
      children:
          genres?.map((g) => _buildGenreChip(g.name ?? 'Unknown')).toList() ??
              [],
    );
  }
}
