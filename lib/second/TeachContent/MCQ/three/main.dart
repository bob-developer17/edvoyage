import 'package:flutter/material.dart';
import 'package:frontend/second/TeachContent/FC/two/question.dart';
import 'package:frontend/utils/colors/colors.dart';
import 'swiper.dart';
import 'options.dart';

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).textScaler;
    final screenWidth = MediaQuery.of(context).size.width;
    final imageWidth = screenWidth * 0.1; // Adjusted for better scaling
    double font1 = textScale.scale(150);
    double iconsize = textScale.scale(30);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: primaryColor, size: iconsize),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image.asset(
          'assets/logo_profile.png',
          width: font1,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            flex: 5,
            child: Question(
              centeredText: 'Gametogenesis',
              largeText:
                  'Which of these is a major difference between oogenesis and spermatogenesis?',
            ),
          ),
          Flexible(flex: 2, child: Container()),
          Flexible(flex: 7, child: Options()),
          Flexible(flex: 1, child: Container()),
          Flexible(flex: 1, child: Swiper(text: '1/120')),
        ],
      ),
    );
  }
}
