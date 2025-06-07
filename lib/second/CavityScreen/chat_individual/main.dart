import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'chat_bubble.dart';
import 'input_field.dart';

class ChatIndividual extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.1),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(screenWidth * 0.04),
              children: [
                ChatBubble(
                  message: "Hi",
                  isSentByMe: true,
                ),
                ChatBubble(
                  message: "hello , Welcome",
                  isSentByMe: false,
                ),
                ChatBubble(
                  message: "I need to know about universities",
                  isSentByMe: true,
                ),
                ChatBubble(
                  message: "We have 200+ universities",
                  isSentByMe: false,
                ),
                ChatBubble(
                  message: "Good send me detailed infor mation of all the data",
                  isSentByMe: true,
                ),
                ChatBubble(
                  message: "Hello! This is a cloud bubble.",
                  isSentByMe: false,
                ),
                ChatBubble(
                  message: "Hello! This is a cloud bubble.",
                  isSentByMe: true,
                ),
                ChatBubble(
                  message: "Hello! This is a cloud bubble.",
                  isSentByMe: false,
                ),
              ],
            ),
          ),
          MessageInputField(),
        ],
      ),
    );
  }
}
