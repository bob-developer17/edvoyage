import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;

  CustomButtonWidget({required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: grey1,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(buttonText, style: TextStyle(color: darkblack, fontSize: 16)),
            Icon(Icons.arrow_forward, color: darkblack),
          ],
        ),
      ),
    );
  }
}
