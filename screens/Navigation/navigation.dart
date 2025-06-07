import 'package:flutter/material.dart';

import 'upgrade.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Icon aligned to left
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
              child: Icon(Icons.menu, size: screenWidth * 0.08),
            ),

            // Section 2: Profile Info
            Column(
              children: [
                CircleAvatar(
                  radius: screenWidth * 0.15,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text('Jane Doe',
                    style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold)),
                Text('Medical Student',
                    style: TextStyle(fontSize: screenWidth * 0.045)),
              ],
            ),

            SizedBox(height: screenHeight * 0.04),

            // Section 3: Two Columns with Icon and Text
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoTile(icon: Icons.bookmark, text: 'Bookmarks'),
                InfoTile(icon: Icons.settings, text: 'Settings'),
              ],
            ),
            Divider(thickness: 1),

            // Section 4: Five Columns with Icon and Text
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              InfoTile(icon: Icons.question_answer, text: 'FAQ'),
              InfoTile(icon: Icons.book, text: 'Terms & Conditions'),
              InfoTile(icon: Icons.star, text: 'Rate Us'),
              InfoTile(icon: Icons.share, text: 'Share Devoyage'),
              InfoTile(icon: Icons.help, text: 'Help & Support'),
            ]),
            Divider(thickness: 1),

            // Section 6: Single Icon and Text
            Center(
                child: InfoTile(icon: Icons.logout_outlined, text: 'Logout')),

            SizedBox(height: screenHeight * 0.02),

            UpgradeCard(),
            SizedBox(height: screenHeight * 0.1),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.02, bottom: screenHeight * 0.02),
                child: Text('Version 1.1',
                    style: TextStyle(fontSize: screenWidth * 0.035)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String text;
  const InfoTile({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.004),
      child: Row(
        children: [
          SizedBox(width: screenWidth * 0.03),
          Row(
            children: [
              Icon(icon, size: screenWidth * 0.1),
              // i need a small spacig between icon and text
              SizedBox(width: screenWidth * 0.04),
              Text(text, style: TextStyle(fontSize: screenWidth * 0.05)),
            ],
          ),
        ],
      ),
    );
  }
}
