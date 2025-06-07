import 'package:flutter/material.dart';
import 'package:frontend/second/CavityScreen/cavity_result/main.dart';
import 'package:frontend/utils/colors/colors.dart';

class clilincalappbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: // a back button
          IconButton(
        icon: Icon(Icons.arrow_back,
            color: primaryColor,
            size: screenWidth * 0.1), // Responsive icon size
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: screenWidth * 0.1,
        ), // Responsive padding for left alignment
        child: Image.asset(
          'assets/logo_profile.png', // Change this to your asset image
          width: screenWidth * 0.5, // 10% of screen width
          height: screenHeight * 0.5, // 5% of screen height
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(60); // Keeping a standard AppBar height
}
