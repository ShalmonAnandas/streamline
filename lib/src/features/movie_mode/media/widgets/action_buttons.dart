import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:domain/domain.dart';
import '../providers/media_provider.dart'; // Import the generated provider

class ActionButtons extends ConsumerWidget {
  final MediaDetailsModel media;

  const ActionButtons({
    super.key,
    required this.media,
  });

  // Helper widget for secondary action buttons as Chips (moved here)
  Widget _buildSecondaryActionChip(
      IconData icon, String label, VoidCallback? onPressed, bool isSelected) {
    // Use ActionChip instead of Chip to handle onPressed
    return ActionChip(
      avatar: Icon(
          // Use a filled icon when selected (saved)
          isSelected ? Amicons.iconly_bookmark : icon,
          color: isSelected ? Colors.purpleAccent : Colors.white70,
          size: 18),
      label: Text(label),
      labelStyle: GoogleFonts.quicksand(
          color:
              isSelected ? Colors.purpleAccent : Colors.white.withOpacity(0.9),
          fontSize: 13,
          fontWeight: FontWeight.w500),
      backgroundColor: isSelected
          // Brighter background for selected state
          ? Colors.purpleAccent.withOpacity(0.15)
          : Colors.white.withOpacity(0.1),
      padding: const EdgeInsets.symmetric(
          horizontal: 12, vertical: 8), // Adjust padding for chip
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Rounded corners
        side: BorderSide(
            color: isSelected
                ? Colors.purpleAccent.withOpacity(0.5)
                : Colors.white.withOpacity(0.2),
            width: 0.5), // Subtle border
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: onPressed, // Use the passed onPressed callback
      tooltip: label, // Optional: Add tooltip
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the generated provider state
    final saveState = ref.watch(mediaSaveProvider(media));
    // Read the notifier instance from the generated provider
    final saveNotifier = ref.read(mediaSaveProvider(media).notifier);

    // ... rest of the build method remains the same for now ...
    return Column(
      children: [
        // ... existing Row for Trailer and Watch now ...
        Row(
          children: [
            // Trailer button - smaller width
            Container(
              // Removed Expanded, added margin for spacing
              margin: const EdgeInsets.only(right: 12),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    blurRadius: 10.0,
                    spreadRadius: -2.0,
                    offset: const Offset(0, 2),
                  ),
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton.icon(
                onPressed: () {/* TODO: Trailer action using media */},
                icon: const Icon(Amicons.iconly_play_curved,
                    color: Colors.black, size: 20),
                label: Text('Trailer',
                    style: GoogleFonts.quicksand(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      vertical: 14, horizontal: 20), // Adjusted padding
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 0,
                ),
              ),
            ),
            // Watch now button - takes remaining space
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    // Add gradient
                    colors: [Colors.deepPurple, Colors.purpleAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.purple
                          .withOpacity(0.5), // Updated shadow color
                      blurRadius: 25.0, // Increased blur for more bloom
                      spreadRadius: -1.0,
                      offset: const Offset(0, 4), // Slightly adjusted offset
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton.icon(
                  onPressed: () {/* TODO: Watch now action using media */},
                  icon: const Icon(Amicons.iconly_show_curved,
                      color: Colors.white, size: 20),
                  label: Text(
                      media.originalTitle == null
                          ? 'Season 1 Episode 1'
                          : 'Watch now',
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, // Make button transparent for gradient
                    shadowColor:
                        Colors.transparent, // Remove default button shadow
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 0, // Ensure container shadow is primary
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        // Secondary Action Buttons (Save, Share, Download) as Chips
        Wrap(
          alignment: WrapAlignment.spaceAround, // Center chips roughly
          spacing: 12.0, // Horizontal space
          runSpacing: 8.0, // Vertical space if wrapping occurs
          children: [
            saveState.when(
              data: (isSaved) => _buildSecondaryActionChip(
                isSaved
                    ? Amicons.iconly_bookmark_curved_fill
                    : Amicons.iconly_bookmark_curved,
                isSaved ? 'Saved' : 'Save',
                isSaved
                    ? () => saveNotifier.removeSavedMedia()
                    : () => saveNotifier.saveMedia(),
                isSaved,
              ),
              loading: () => _buildSecondaryActionChip(
                Amicons.iconly_bookmark_curved,
                'Saving...', // Indicate loading state
                null, // Disable button while loading
                false,
              ),
              error: (err, stack) => _buildSecondaryActionChip(
                Amicons.iconly_bookmark_curved,
                'Error', // Indicate error state
                null, // Disable button on error
                false,
              ),
            ),
            _buildSecondaryActionChip(Amicons.iconly_send_curved, 'Share', () {
              /* TODO: Share action */
            }, false),
            _buildSecondaryActionChip(
                Amicons.iconly_download_curved, 'Download', () {
              /* TODO: Download action */
            }, false),
          ],
        ),
      ],
    );
  }
}
