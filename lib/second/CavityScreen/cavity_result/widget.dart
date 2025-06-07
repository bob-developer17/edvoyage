import 'package:flutter/material.dart';

class ResponsiveProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight =
            constraints.maxHeight * 0.9; // Adjust height as needed

        return Center(
          child: Container(
            width: screenWidth * 0.9, // 90% of screen width
            height: screenHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:
                  BorderRadius.circular(screenHeight / 2), // Oval Shape
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              children: [
                // Profile Image (10%)
                Container(
                  width: screenWidth * 0.15,
                  height: screenHeight,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Text Content (80%)
                Container(
                  width: screenWidth * 0.6,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Anand Eshwar",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight * 0.2, // Adjust font size
                            height: 1),
                      ),
                      Text(
                        "Medical Student",
                        style: TextStyle(
                          fontSize: screenHeight * 0.2,
                          height: 1,
                        ),
                      ),
                      Text(
                        "Altai University",
                        style: TextStyle(
                          fontSize: screenHeight * 0.2,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),

                // Side Image (10%)
                Container(
                  width: screenWidth * 0.13,
                  height: screenHeight,
                  child: Image.asset(
                    'assets/chat/add.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
