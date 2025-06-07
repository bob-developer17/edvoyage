import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize,
    this.color,
    this.fontWeight,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize ?? 16.0,
          color: color ?? Color.fromRGBO(3, 126, 115, 1),
          fontWeight: fontWeight ?? FontWeight.normal,
          fontFamily: fontFamily ?? 'Roboto-Regular',
        ),
      ),
    );
  }
}
