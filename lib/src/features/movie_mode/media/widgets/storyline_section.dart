import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StorylineSection extends StatefulWidget {
  final String? overview;

  const StorylineSection({super.key, required this.overview});

  @override
  State<StorylineSection> createState() => _StorylineSectionState();
}

class _StorylineSectionState extends State<StorylineSection> {
  bool _showFullOverview = false; // State for Read more

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Storyline',
          style: GoogleFonts.quicksand(
            fontSize: 20, // Slightly larger
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 14),
        // Overview Text with Read More
        InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: () {
            setState(() {
              _showFullOverview = !_showFullOverview;
            });
          },
          child: AnimatedSize(
            // Wrap the Column with AnimatedSize
            duration: const Duration(milliseconds: 300), // Animation duration
            curve: Curves.easeInOut, // Animation curve
            alignment: Alignment
                .topCenter, // Align content to the top during animation
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.overview ?? 'No overview available.',
                  style: GoogleFonts.quicksand(
                    fontSize: 15, // Slightly larger
                    color:
                        Colors.white.withOpacity(0.8), // Slightly transparent
                    height: 1.6, // Increased line spacing
                  ),
                  maxLines: _showFullOverview ? null : 4,
                  overflow: _showFullOverview
                      ? TextOverflow.visible
                      : TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                // Only show Read More if text is actually truncated
                LayoutBuilder(
                  // Use LayoutBuilder to check if text overflows
                  builder: (context, constraints) {
                    final span = TextSpan(
                      text: widget.overview ?? '',
                      style: GoogleFonts.quicksand(
                        fontSize: 15,
                        height: 1.6,
                      ),
                    );
                    final tp = TextPainter(
                      maxLines: 4,
                      textAlign: TextAlign.left,
                      textDirection: TextDirection.ltr,
                      text: span,
                    );
                    tp.layout(maxWidth: constraints.maxWidth);
                    final isOverflowing = tp.didExceedMaxLines;

                    if (isOverflowing || _showFullOverview) {
                      return Center(
                        child: TextButton.icon(
                          style: TextButton.styleFrom(
                              foregroundColor: Colors.white),
                          onPressed: () {
                            setState(() {
                              _showFullOverview = !_showFullOverview;
                            });
                          },
                          icon: Icon(
                            _showFullOverview
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            size: 20,
                          ),
                          label: Text(
                            _showFullOverview ? 'Read less' : 'Read more',
                            style: GoogleFonts.quicksand(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    } else {
                      return const SizedBox
                          .shrink(); // Don't show if not overflowing
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
