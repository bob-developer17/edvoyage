import 'package:flutter/material.dart';
import 'package:frontend/second/utils/colors.dart';

class DynamicSquareWidget extends StatelessWidget {
  final String topText;
  final String bottomText;

  const DynamicSquareWidget({
    Key? key,
    required this.topText,
    required this.bottomText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen width & height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define square size as a percentage of screen size
    double squareSize = screenWidth * 0.15; // 40% of screen width (adjustable)
    double fontSizeLarge = squareSize * 0.35; // 16% of square size
    double fontSizeSmall = squareSize * 0.23; // 10% of square size

    return Container(
      width: squareSize,
      height: squareSize,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: primaryColor, width: 3),
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              topText,
              style: TextStyle(
                  fontSize: fontSizeLarge, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: squareSize * 0.01), // Space between texts
            Text(
              bottomText,
              style: TextStyle(fontSize: fontSizeSmall, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
