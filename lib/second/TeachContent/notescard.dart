import 'package:flutter/material.dart';

import '../utils/colors.dart';

class NotesCard extends StatelessWidget {
  final String title;
  final String? topic;
  final String video;

  const NotesCard({
    super.key,
    required this.title,
    this.topic,
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final fontsize = screenWidth * 0.05;

    return SizedBox(
      width: screenWidth * 0.9, // 90% of screen width
      height: screenHeight * 0.15, // 25% of screen height
      child: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/card.png',
              fit: BoxFit.fill,
            ),
          ),

          // Top-left: title and topic
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: fontsize, // responsive font
                      color: grey3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (topic != null && topic!.isNotEmpty)
                    Text(
                      topic!,
                      style: TextStyle(
                        fontSize: fontsize,
                        color: grey3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          ),

          // Bottom-right: video count
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.04,
                bottom: screenHeight * 0.015,
              ),
              child: Text(
                "$video Videos",
                style: TextStyle(
                  fontSize: fontsize * 0.8,
                  color: grey3,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
