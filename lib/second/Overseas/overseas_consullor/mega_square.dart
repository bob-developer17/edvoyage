import 'package:flutter/material.dart';

class DynamicCardWidget extends StatelessWidget {
  final String topText;
  final String bottomText;

  const DynamicCardWidget({
    Key? key,
    required this.topText,
    required this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define card size as a percentage of screen size
    double cardWidth = screenWidth * 0.8; // 80% of screen width
    double cardHeight = screenHeight * 0.3; // 30% of screen height

    // Calculate section heights
    double topSectionHeight = cardHeight * 0.6; // 60% of card height
    double bottomSectionHeight = cardHeight * 0.4; // 40% of card height

    // Dynamic font sizes
    double topFontSize = cardWidth * 0.08; // 8% of card width
    double bottomFontSize = cardWidth * 0.06; // 6% of card width

    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Optional rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Top 60% section
          Container(
            width: cardWidth,
            height: topSectionHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            ),
            child: Center(
              child: Text(
                topText,
                style: TextStyle(
                  fontSize: topFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // Bottom 40% section
          Container(
            width: cardWidth,
            height: bottomSectionHeight,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            ),
            child: Center(
              child: Text(
                bottomText,
                style: TextStyle(
                  fontSize: bottomFontSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
