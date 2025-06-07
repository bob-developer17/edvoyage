import 'package:flutter/material.dart';
import '../../utils/avatar.dart';
import '../../utils/colors/backgroundColor.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/backgroundImage.dart';
import '../../widgets/dots/grey_dot.dart';
import '../../widgets/dots/red_dot.dart';

import '../../widgets/skipButton.dart';
import 'screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  late Measurements size;

  @override
  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: primaryColor,
          ),
          Container(
            height: double.infinity,
            child: Image.asset(
              background,
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              final screenHeight = MediaQuery.of(context).size.height;
              final screenWidth = MediaQuery.of(context).size.width;
              final imagehw = MediaQuery.of(context).size.height * 0.35;

              return Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Center(
                      child: SizedBox(
                        height: screenHeight * 0.35,
                        child: Image.asset(onboarding1),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight * 0.43,
                      decoration: BoxDecoration(
                        color: thirdColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(110),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.05,
                          vertical: screenHeight * 0.02,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: screenHeight * 0.02),

                            // Indicator Dots
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                RedDot(),
                                SizedBox(width: 10),
                                GreyDot(),
                                SizedBox(width: 10),
                                GreyDot(),
                                SizedBox(width: 10),
                                GreyDot(),
                              ],
                            ),

                            SizedBox(height: screenHeight * 0.015),

                            // Heading
                            Text(
                              'Crack your exam confidently',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenHeight * 0.024,
                                fontFamily: 'Roboto',
                                color: primaryColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            SizedBox(height: screenHeight * 0.01),

                            // Subtext
                            Text(
                              'Through our well-crafted teaching content from videos, clinical case, mcq, train yourself for the NEXT and NEET exam confidently.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenHeight * 0.022,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.03),
                            // Buttons
                            Container(
                              width: screenWidth,
                              height: screenHeight * 0.1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SkipButton(),
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      PageRouteBuilder(
                                        pageBuilder: (_, __, ___) =>
                                            ScreenTwo(),
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/onboardingnext.png',
                                      width: imagehw * 0.3,
                                      height: imagehw * 0.3,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: screenHeight * 0.015),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
