import 'package:flutter/material.dart';
import 'chatmessage.dart'; // Importing the ChatMessageWidget

class ChatSMessagesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Image.asset(
          'assets/Messages.png',
          width: size.width * 0.35,
          height: size.height * 0.5,
        ),
        centerTitle: true,
        elevation: 0.5,
      ),
      backgroundColor: Colors.grey[200],
      body: SizedBox(
        height: size.height * 0.8,
        child: Column(
          children: [
            ChatMessageWidget(),
            // add a gre light divider
            Container(height: 1, color: Colors.grey[400]),
            ChatMessageWidget(),
            Container(height: 1, color: Colors.grey[400]),
            ChatMessageWidget(),
            Container(height: 1, color: Colors.grey[400]),
            ChatMessageWidget(),
          ],
        ),
      ), // Using the imported widget
    );
  }
}
