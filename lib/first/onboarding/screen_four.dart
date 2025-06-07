import 'package:flutter/material.dart';
import '../../utils/avatar.dart';
import '../../utils/colors/backgroundColor.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/backgroundImage.dart';
import '../../widgets/dots/grey_dot.dart';
import '../../widgets/dots/red_dot.dart';
import '../../widgets/long_button.dart';
import '../../widgets/onboardingbold.dart';

import '../login/sign_up.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({Key? key}) : super(key: key);

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  Measurements? size;
  @override
  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);
    double fontSize = MediaQuery.of(context).size.height * 0.03;
    double inbetween = MediaQuery.of(context).size.height * 0.015;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
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
                Center(
                  child: Container(
                    padding: EdgeInsets.only(top: 80),
                    height: size?.hp(42),
                    // width: size?.wp(80),
                    child: Image.asset(onboarding4),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: size?.hp(57),
                ),
                Container(
                  height: size?.hp(43),
                  width: size?.wp(100),
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
                        height: size?.hp(3),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            GreyDot(),
                            SizedBox(width: size?.wp(2)),
                            RedDot(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: inbetween,
                      ),
                      Text(
                        'Interact with Professionals',
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'Roboto',
                          color: primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        // height: size?.hp(14),
                        width: size?.wp(87),
                        child: Column(
                          children: [
                            LateBold(
                                text:
                                    'Get your questions answered by some of the best lectures or doctors around the globe through the medico hub CAVITY.post your questions or doubts and engage with professionals.'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: inbetween,
                      ),
                      LongButton(
                        text: 'Get Started',
                        action: () {
                          Navigator.push(
                              context,
                              PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => SignUp()));
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
