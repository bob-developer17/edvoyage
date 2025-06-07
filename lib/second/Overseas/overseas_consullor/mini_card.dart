import 'package:flutter/material.dart';

import 'dynamicsquare.dart';

class MiniCardSection extends StatelessWidget {
  const MiniCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    double cardSize = MediaQuery.of(context).size.width * 0.25; // Square size

    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      DynamicSquareWidget(
        topText: "15",
        bottomText: "July",
      ),
      DynamicSquareWidget(
        topText: "16",
        bottomText: "July",
      ),
      DynamicSquareWidget(
        topText: "17",
        bottomText: "July",
      ),
    ]);
  }
}
