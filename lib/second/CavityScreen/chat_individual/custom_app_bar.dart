import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double padding = screenWidth * 0.04;
    double profileImageSize = screenHeight * 0.06;

    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(left: padding),
        child: Icon(Icons.arrow_back,
            size: screenWidth * 0.07, color: Colors.black),
      ),
      title: Row(
        children: [
          Container(
            width: screenWidth * 0.6,
            child: Row(
              children: [
                Container(
                  width: profileImageSize,
                  height: profileImageSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/profile.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.03),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Anand Eeshwar",
                          style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      Text("Medical Student",
                          style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              color: Colors.grey)),
                      Text("Altal State Medical University",
                          style: TextStyle(
                              fontSize: screenWidth * 0.03,
                              color: Colors.grey)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
