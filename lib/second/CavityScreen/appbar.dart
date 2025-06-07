import 'package:flutter/material.dart';
import 'package:frontend/second/CavityScreen/cavity_result/main.dart';
import 'chat_home/main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.1,
        ), // Responsive padding for left alignment
        child: Image.asset(
          'assets/logo_profile.png', // Change this to your asset image
          width: screenWidth * 0.4, // 10% of screen width
          height: screenHeight * 0.4, // 5% of screen height
          fit: BoxFit.contain,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Navigate to SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => cavity_result()),
            );
          },
          child: Image.asset(
            'assets/search.png', // Change this to your asset image
          ),
        ),
        SizedBox(width: screenWidth * 0.05), // Responsive spacing
        GestureDetector(
          onTap: () {
            // Navigate to SecondPage
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatSMessagesHome()),
            );
          },
          child: Image.asset(
            'assets/message.png', // Change this to your asset image
          ),
        ),
        SizedBox(width: screenWidth * 0.02),
      ],
    );
  }

  Widget _buildIconButton(IconData icon, double screenWidth) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: screenWidth * 0.02,
      ), // Responsive margin
      width: screenWidth * 0.1, // Icon button width is 10% of screen width
      height: screenWidth * 0.1, // Same as width for circular shape
      decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: Colors.white,
          size: screenWidth * 0.06,
        ), // Icon size scales with width
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(60); // Keeping a standard AppBar height
}
