import 'package:flutter/material.dart';

class gatherequipments extends StatelessWidget {
  final List<String> linkTexts = [
    '1. Headtorch or pen torch',
    '2. Toungue depressions (x2)',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(linkTexts.length, (index) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Text(
            linkTexts[index],
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        );
      }),
    );
  }
}
