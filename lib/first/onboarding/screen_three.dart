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
import 'screen_four.dart';
import 'screen_two.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  Measurements? size;

  @override
  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: primaryColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenHeight = MediaQuery.of(context).size.height;
          final screenWidth = MediaQuery.of(context).size.width;
          final imagehw = MediaQuery.of(context).size.height * 0.10;
          final spacingaround = MediaQuery.of(context).size.height * 0.05;
          final fontSize = MediaQuery.of(context).size.height * 0.025;
          return Column(
            children: [
              // Top Half with Image
              Expanded(
                flex: 6,
                child: Stack(
                  children: [
                    Container(
                      color: primaryColor,
                    ),
                    Positioned.fill(
                      child: Image.asset(
                        background,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Image.asset(
                          onboarding3,
                          height: size?.hp(30),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Bottom Half with content
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(110),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: size?.hp(3)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GreyDot(),
                          SizedBox(width: size?.wp(2)),
                          GreyDot(),
                          SizedBox(width: size?.wp(2)),
                          RedDot(),
                          SizedBox(width: size?.wp(2)),
                          GreyDot(),
                        ],
                      ),
                      SizedBox(height: spacingaround * 0.5),
                      BoldText(text: "Medico's mutual friend"),
                      SizedBox(height: spacingaround * 0.5),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Keep all your medico friends and colleagues in a single hub, connect with them in our in-app messenger on the go.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: fontSize,
                            color: grey3,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SkipButton(),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => ScreenFour(),
                                ),
                              ),
                              child: Image.asset('assets/onboardingnext.png',
                                  width: imagehw, height: imagehw),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: spacingaround),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
