import 'package:flutter/material.dart';

class Introduction extends StatelessWidget {
  final List<String> linkTexts = [
    'Wash Your Hands and don PPE',
    '',
    'Introduce yourself to the patient and ask for their name and date of birth',
    '',
    'Confirm the patient’s identity using name and date of birth',
    '',
    'Breifly explain what the examination will using patient friendly language',
    '',
    'Gain consent to proceed with the examination',
    '',
    'Ask the patient to sit on a chair',
  ];

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final fontsize = screenheight * 0.024;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(linkTexts.length, (index) {
          final text = linkTexts[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 1.0, left: 30.0),
            child: Text(
              text,
              style: TextStyle(
                letterSpacing: 0.6,
                // Set your custom font family
                fontSize: fontsize, // Set your custom font size
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
          );
        }),
      ),
    );
  }
}
