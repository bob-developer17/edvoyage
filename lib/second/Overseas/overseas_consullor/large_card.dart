import 'package:flutter/material.dart';

class LargeRectangleSection extends StatelessWidget {
  const LargeRectangleSection({super.key});

  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width * 0.8;
    double containerHeight = containerWidth * 2; // 2x height of width

    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        color: Colors.blue, // 🔵 Blue Background
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
