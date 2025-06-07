import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'overseas1/main.dart';

class BeginButton extends StatelessWidget {
  const BeginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Overseas1(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: secondaryColor,
        foregroundColor: Colors.white, // Text color
        textStyle: const TextStyle(
          fontSize: 20,
        ), // Adjust the text size as needed
        padding: const EdgeInsets.symmetric(
          horizontal: 90,
          vertical: 15,
        ), // Adjust padding as needed
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ), // Adjust the radius for rounded corners
        ),
      ),
      child: const Text('Begin'),
    );
  }
}
