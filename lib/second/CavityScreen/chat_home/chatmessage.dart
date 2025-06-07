import 'package:flutter/material.dart';

class ChatMessageWidget extends StatefulWidget {
  @override
  State<ChatMessageWidget> createState() => _ChatMessageWidgetState();
}

class _ChatMessageWidgetState extends State<ChatMessageWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.1,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Image - 10%
            Container(
              width: size.width * 0.13,
              height: size.height * 0.07,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: size.width * 0.02),

            // Name & Message - 80%
            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Anand Eshwar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Thank you",
                            style: TextStyle(fontSize: size.width * 0.04),
                          ),
                          SizedBox(width: size.width * 0.02),
                          Icon(
                            Icons.favorite,
                            size: size.width * 0.05,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Timestamp - 10%
            Expanded(
              flex: 2,
              child: Text(
                "2:25 PM",
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
