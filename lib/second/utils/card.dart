import 'package:flutter/material.dart';
import 'package:frontend/second/utils/customtext.dart';

class DynamicCard extends StatelessWidget {
  final String text1;
  final String text2;

  const DynamicCard({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: text1,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade700,
          ),
          const SizedBox(height: 25),
          Align(
            alignment: Alignment.centerRight,
            child: CustomText(
              text: text2,
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 30,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(3, 126, 115, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
