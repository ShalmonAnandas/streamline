import 'package:flutter/material.dart';
import 'dart:ui';

// Data class for navigation items
class SlidingBottomNavBarItem {
  final IconData icon;
  final IconData activeIcon;
  final Color activeColor;

  SlidingBottomNavBarItem({
    required this.icon,
    required this.activeIcon,
    required this.activeColor,
  });
}

class SlidingBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<SlidingBottomNavBarItem> items;
  final double height;
  final Color inactiveColor;
  final Color backgroundColor;
  final double blurSigma;
  final Duration animationDuration;
  final Curve curve;

  const SlidingBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
    this.height = 60.0, // Default height
    this.inactiveColor = Colors.grey,
    this.backgroundColor = Colors.black,
    this.blurSigma = 10.0,
    this.animationDuration = const Duration(milliseconds: 300),
    this.curve = Curves.easeInOut,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth / items.length;

    return ClipRRect(
      // borderRadius: BorderRadius.circular(30.0), // Changed to only top corners
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blurSigma, sigmaY: blurSigma),
        child: Container(
          height: height,
          color: backgroundColor.withOpacity(0.3),
          child: Stack(
            children: [
              // Sliding Indicator (Animated Positioned)
              AnimatedPositioned(
                duration: animationDuration,
                curve: curve,
                left: currentIndex * itemWidth,
                top: 0,
                height: height,
                width: itemWidth,
                child: Center(
                  // Center the bloom effect within the item width
                  child: Container(
                    // Indicator shape slightly smaller than itemWidth for visual separation
                    width: itemWidth * 0.7,
                    height: height * 0.7,
                    decoration: BoxDecoration(
                      shape: BoxShape
                          .circle, // Keep the shape for the shadow bounds
                      boxShadow: [
                        BoxShadow(
                          color:
                              items[currentIndex].activeColor.withOpacity(0.5),
                          blurRadius: 25,
                          spreadRadius: 1,
                          offset: Offset(0, 30), // Keep the downward offset
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: List.generate(items.length, (index) {
                  final item = items[index];
                  final bool isActive = index == currentIndex;
                  return GestureDetector(
                    onTap: () => onTap(index),
                    behavior: HitTestBehavior
                        .opaque, // Ensure taps register on empty space
                    child: SizedBox(
                      // Ensure each item takes up equal space
                      width: itemWidth,
                      height: height,
                      child: Icon(
                        isActive ? item.activeIcon : item.icon,
                        color: isActive ? item.activeColor : inactiveColor,
                        size: 24.0, // Standard icon size
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
