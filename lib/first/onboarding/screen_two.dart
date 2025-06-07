import 'package:flutter/material.dart';
import '../../utils/avatar.dart';
import '../../utils/colors/backgroundColor.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/backgroundImage.dart';
import '../../widgets/dots/grey_dot.dart';
import '../../widgets/dots/red_dot.dart';
import '../../widgets/onboarding_button.dart';
import '../../widgets/onboardingbold.dart';
import '../../widgets/skipButton.dart';
import 'screen_three.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Measurements? size;
  @override
  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);
    return Scaffold(
        backgroundColor: secondaryColor,
        body: LayoutBuilder(
          builder: (context, constraints) {
            final screenHeight = MediaQuery.of(context).size.height;
            final screenWidth = MediaQuery.of(context).size.width;
            final imagehw = MediaQuery.of(context).size.height * 0.35;

            return Center(
              child: Stack(
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
                  Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Center(
                          child: Container(
                            padding: EdgeInsets.only(top: screenHeight * 0.03),
                            height: screenHeight * 0.35,
                            child: Image.asset(onboarding2),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: screenHeight * 0.43,
                          width: screenWidth,
                          decoration: BoxDecoration(
                            color: thirdColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(110),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GreyDot(),
                                    SizedBox(width: size?.wp(2)),
                                    RedDot(),
                                    SizedBox(width: size?.wp(2)),
                                    GreyDot(),
                                    SizedBox(width: size?.wp(2)),
                                    GreyDot()
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.015,
                              ),
                              BoldText(text: "Study abroad, now easy!"),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: screenWidth * 0.87,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    LateBold(
                                        text:
                                            'Abroad medical admission might sound hectic, but devoyage can help you shortlist and guide you not only through the admission but throughout the academic course.'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.05),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SkipButton(),
                                    GestureDetector(
                                      onTap: () => Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                          pageBuilder: (_, __, ___) =>
                                              ScreenThree(),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
