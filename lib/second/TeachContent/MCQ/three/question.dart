import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String centeredText;
  final String largeText;

  const Question({
    super.key,
    required this.centeredText,
    required this.largeText,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      centeredText,
                      style: TextStyle(
                        fontSize: screenHeight * 0.03,
                        fontFamily: 'Roboto',
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Add your onPressed functionality here
                  },
                  icon: const Icon(
                    Icons.close_outlined,
                    fill: 1.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),

            SizedBox(height: screenHeight * 0.02),
            Text(
              largeText,
              style: TextStyle(
                fontSize: screenHeight * 0.022,
                fontFamily: 'Roboto',
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
