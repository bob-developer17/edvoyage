import 'package:flutter/material.dart';

import '../../../utils/mcqcard.dart';

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  // get the height of the screen
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;
  // i need anotehr variable with 10% of the above screeenHeight
  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.12;
  double get screenHeight3 => screenHeight * 0.125;
  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // DirectoryTitle(text1: 'MCQ', text2: 'None', text3: 'None'),
            mcqcard(
              text:
                  'This is a sample text for the MCQ card. It should be centered and have padding.',
            ),
            mcqcard(
              text:
                  'This is a sample text for the MCQ card. It should be centered and have padding.',
            ),
            mcqcard(
              text:
                  'This is a sample text for the MCQ card. It should be centered and have padding.',
            ),
            mcqcard(
              text:
                  'This is a sample text for the MCQ card. It should be centered and have padding.',
            ),
          ],
        ),
      ),
    );
  }
}
