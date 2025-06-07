import 'package:flutter/material.dart';

class MessageInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double padding = screenWidth * 0.04;

    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: padding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(screenWidth * 0.5),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Type a message",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(width: padding),
          CircleAvatar(
            radius: screenWidth * 0.06,
            backgroundColor: Colors.green,
            child:
                Icon(Icons.send, color: Colors.white, size: screenWidth * 0.06),
          ),
        ],
      ),
    );
  }
}
