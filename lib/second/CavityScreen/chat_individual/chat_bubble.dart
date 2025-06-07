import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;

  ChatBubble({required this.message, required this.isSentByMe});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bubbleWidth = screenWidth * 0.7;
    double imageSize = screenWidth * 0.05;
    double timesize = screenWidth * 0.03;
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (isSentByMe) // Show image only if message is sent by user
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      'assets/tick.png',
                      width: imageSize,
                      height: imageSize,
                    ),
                  ),
                  Text(
                    '2:34 PM',
                    style: TextStyle(fontSize: timesize, color: Colors.grey),
                  ),
                ],
              ),
            ),
          Container(
            margin: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
            padding: EdgeInsets.all(screenWidth * 0.04),
            constraints: BoxConstraints(maxWidth: bubbleWidth),
            decoration: BoxDecoration(
              color: isSentByMe ? Colors.green : Colors.white,
              borderRadius: BorderRadius.circular(screenWidth * 0.05),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            ),
            child: Text(
              message,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: isSentByMe ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
