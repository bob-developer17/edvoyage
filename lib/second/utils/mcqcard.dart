// i need a flutter widget in sateful that has a container with
// hwite background with rounded corners and a grey.300 with 1 border
// and has a text aligned to the center with padding of 10,20 in symmetry
// also the text should have a font size , font family and fon width in cutom
// shoudl only ask a single text as an argument

import 'package:flutter/material.dart';

class mcqcard extends StatefulWidget {
  final String text;
  const mcqcard({super.key, required this.text});

  @override
  State<mcqcard> createState() => _CustomTextState();
}

class _CustomTextState extends State<mcqcard> {
  // get the height of the screen
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;

  // i need anotehr variable with 10% of the above screeenHeight
  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.12;
  double get screenHeight3 => screenHeight * 0.125;
  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.7;
  double get screenWidth3 => screenWidth * 0.7;
  double get fontsize1 => screenHeight * 0.02;
  double get fontsize2 => screenHeight * 0.02;

  String get text {
    return widget.text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade300, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: fontsize1,
              fontFamily: 'Arial',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
