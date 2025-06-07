import 'package:flutter/material.dart';

class tableofcontents extends StatelessWidget {
  final List<String> linkTexts = [
    '1. Introduction to Flutter',
    '2. Setting Up Environment',
    '3. Widgets Overview',
    '4. State Management',
    '5. Navigation and Routing',
    '6. Networking in Flutter',
    '7. Advanced Concepts',
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
