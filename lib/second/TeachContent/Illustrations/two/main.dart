import 'package:flutter/material.dart';

import '../../../utils/directorytitle.dart';
import '../../../utils/minicustomappbar.dart';

class Illustrationsmain extends StatefulWidget {
  const Illustrationsmain({super.key});

  @override
  State<Illustrationsmain> createState() => _TwoState();
}

class _TwoState extends State<Illustrationsmain> {
  int currentIndex = 0;
  final int totalImages = 13;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double fontsizeone = screenHeight * 0.02;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomMiniAppBar(),
      body: Column(
        children: [
          DirectoryTitle(
            text1: 'Illustrations',
            text2: 'Human Anatomy',
            text3: 'None',
          ),
          Expanded(
            flex: 8,
            child: Center(
              child: SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.6,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    'assets/notes/aminoacid/${currentIndex + 1}.png',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Prev Button
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentIndex =
                              (currentIndex - 1 + totalImages) % totalImages;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                          horizontal: screenWidth * 0.05,
                        ),
                      ),
                      child: Text(
                        'Prev',
                        style: TextStyle(
                            color: Colors.white, fontSize: fontsizeone),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Text(
                    '${currentIndex + 1}/$totalImages',
                    style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Roboto',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  // Next Button
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = (currentIndex + 1) % totalImages;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                          horizontal: screenWidth * 0.05,
                        ),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white, fontSize: fontsizeone),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
