import 'package:flutter/material.dart';
import 'dart:typed_data';
import '../../core/service/image_cache_service.dart'; // Import the service

class InstantNetworkImage extends StatefulWidget {
  final String imageUrl;
  final Alignment alignment;
  final BoxFit fit;
  final Widget Function(BuildContext, String)? placeholder;
  final Widget Function(BuildContext, String, dynamic)? errorWidget;

  const InstantNetworkImage({
    Key? key,
    required this.imageUrl,
    this.alignment = Alignment.center,
    this.fit = BoxFit.cover,
    this.placeholder,
    this.errorWidget,
  }) : super(key: key);

  @override
  // No need for a custom state class anymore if we only use FutureBuilder
  // _InstantNetworkImageState createState() => _InstantNetworkImageState();
  // Let's use StatelessWidget or just build directly if no state needed
  // For simplicity with FutureBuilder, keeping StatefulWidget but simplifying build
  State<InstantNetworkImage> createState() => _InstantNetworkImageState();
}

// Keep state for potential future optimizations or lifecycle management
class _InstantNetworkImageState extends State<InstantNetworkImage> {
  @override
  Widget build(BuildContext context) {
    // Check memory cache first for immediate display
    final cachedData = ImageCacheService().getFromMemoryCache(widget.imageUrl);
    if (cachedData != null) {
      // If cached, display immediately
      return Image.memory(
        cachedData,
        alignment: widget.alignment,
        fit: widget.fit,
        gaplessPlayback: true, // Ensures smooth transition if data updates
      );
    }

    // If not in memory, use FutureBuilder to fetch via service
    return FutureBuilder<Uint8List>(
      // Keying the FutureBuilder can help if the imageUrl changes dynamically
      // key: ValueKey(widget.imageUrl),
      future: ImageCacheService().getImage(widget.imageUrl),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          // Success: Show image
          return Image.memory(
            snapshot.data!,
            alignment: widget.alignment,
            fit: widget.fit,
            gaplessPlayback: true,
          );
        } else if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasError) {
          // Error: Show error widget
          // Log the actual error for debugging
          // developer.log('Error loading image ${widget.imageUrl}: ${snapshot.error}', name: 'InstantNetworkImage');
          return widget.errorWidget
                  ?.call(context, widget.imageUrl, snapshot.error) ??
              const Center(
                  child: Icon(Icons.broken_image,
                      color: Colors.grey)); // Default error icon
        } else {
          // Waiting or other states: Show placeholder
          return widget.placeholder?.call(context, widget.imageUrl) ??
              Container(
                  color: Colors.grey[
                      800]); // Default placeholder matching the carousel background
        }
      },
    );
  }
}
