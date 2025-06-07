import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  final String imagePath;
  final String titleText;
  final String subtitleText;

  const CustomBanner({
    super.key,
    required this.imagePath,
    required this.titleText,
    required this.subtitleText,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen dimensions using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Define width and height based on screen size or any custom ratio
    double width = screenWidth;
    double height = screenHeight * 0.3;

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Title Text
                SizedBox(
                  width: width * 0.6,
                  child: Text(
                    titleText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: width * 0.06,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Spacer for spacing between title and subtitle
                SizedBox(height: 40),
                // Subtitle Text
                SizedBox(
                  width: width * 0.6,
                  child: Text(
                    subtitleText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: width * 0.04,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
