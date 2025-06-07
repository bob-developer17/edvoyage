import 'package:flutter/material.dart';
import 'package:frontend/second/Overseas/beginbutton.dart';

import '../utils/colors.dart';

class OverseasMain extends StatelessWidget {
  const OverseasMain({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final appBarHeight = MediaQuery.of(context).size.height;
    final appBarImageHeight =
        appBarHeight * 0.9; // Example: 60% of AppBar height
    final appBarImageWidth =
        appBarImageHeight * 1.5; // Example: Width 1.5 times the height
    final bodyImageWidth =
        screenWidth * 0.8; // Images in the body take up 80% of the screen width
    const verticalSpacing = 20.0;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: appBarHeight * 0.09,
        centerTitle: true,
        title: Text(
          'Study Abroad',
          style: TextStyle(
            // Use GoogleFonts to apply Kanit
            fontSize: 37.0, // Set the font size to 18
            fontWeight: FontWeight.w700,
            color: primaryColor,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                width: bodyImageWidth,
                height: appBarHeight * 0.66,
                child: Image.asset(
                  'assets/main.png', // Replace with your main image path
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: verticalSpacing),
              BeginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
