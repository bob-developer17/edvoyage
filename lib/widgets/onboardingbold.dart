import 'package:flutter/material.dart';
import '../utils/avatar.dart';
import '../utils/colors/colors.dart';
import '../utils/responsive.dart';

class BoldText extends StatelessWidget {
  late String text;

  BoldText({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double fontSize = height * 0.035;
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'Roboto',
        color: primaryColor,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class LateBold extends StatelessWidget {
  late String text;

  LateBold({required this.text});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double fontSize = height * 0.02;
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize,
        color: grey3,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
