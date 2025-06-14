import 'package:flutter/material.dart';
import 'package:frontend/second/utils/directorytitle.dart';
import 'package:frontend/second/utils/teachcontentcard.dart';

import 'three/main.dart';

class TeachContentMCQTwo extends StatefulWidget {
  // Changed to StatefulWidget

  // get the height of the screen

  // Constructor
  const TeachContentMCQTwo({super.key});

  @override
  _TeachContentState createState() => _TeachContentState(); // Create state
}

class _TeachContentState extends State<TeachContentMCQTwo> {
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;
  // i need anotehr variable with 10% of the above screeenHeight
  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.12;
  double get screenHeight3 => screenHeight * 0.125;
  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.7;
  double get screenWidth3 => screenWidth * 0.7;
  double get fontsize1 => screenHeight * 0.025;
  double get fontsize2 => screenHeight * 0.018;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            'assets/logo_profile.png',
            width: fontsize1 * 7,
          ),
          backgroundColor: Colors.white),
      backgroundColor: Colors.grey.shade300,
      // Use widget.text1
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              DirectoryTitle(
                  text1: 'MCQ', text2: 'Human Anatomy', text3: 'None'),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Main(),
                    ),
                  );
                },
                child: ResponsiveCardWidget(
                  imageUrl: 'assets/xray.png',
                  title: 'Gametogenesis',
                  subtitle: "20 MCQ's",
                  status: "PREMIUM",
                  timer: 30,
                  video: "assets/crown.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
