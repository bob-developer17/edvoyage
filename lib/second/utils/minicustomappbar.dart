import 'package:flutter/material.dart';

class CustomMiniAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      // ADD A BACK BUTTON WITH GREEN COLOR THICK FONT FOR THE BACK BUTTON
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Color.fromARGB(255, 19, 101, 21),
        ),
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
          width: screenWidth * 0.4, // 10% of screen width
          height: screenHeight * 0.4, // 5% of screen height
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
