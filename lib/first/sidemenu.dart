import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final List<Map<String, dynamic>> navigationItems = [
    {'icon': Icons.bookmark, 'title': 'Bookmarks'},
    {'icon': Icons.settings, 'title': 'Settings'},
    {'divider': true},
    {'icon': Icons.info, 'title': 'FAQ'},
    {'icon': Icons.description, 'title': 'Terms & Conditions'},
    {'icon': Icons.star, 'title': 'Rate Us'},
    {'icon': Icons.share, 'title': 'Share Devoyage'},
    {'icon': Icons.headset, 'title': 'Support'},
    {'divider': true},
    {'icon': Icons.logout, 'title': 'Logout'},
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jane Doe",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Medical Student",
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF9E9E9E)),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),

              // Navigation Items using Custom Widget
              ...List.generate(navigationItems.length, (index) {
                final item = navigationItems[index];
                if (item.containsKey('divider')) {
                  return Divider();
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Handle navigation here
                      print('Navigating to ${item['title']}');
                    },
                    child: Row(
                      children: [
                        Icon(item['icon'], color: Color(0xFF00796B)),
                        SizedBox(width: 10),
                        Text(
                          item['title'],
                          style:
                              TextStyle(color: Color(0xFF00796B), fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              }),

              SizedBox(height: 20),

              // Upgrade Section
              Center(
                child: Container(
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/eclipse.png',
                        fit: BoxFit.cover,
                        width: screenWidth * 0.1,
                        height: screenWidth * 0.1,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Upgrade to PRO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Access to all MCQ’s, videos and other future updates for a year with 24/7 support",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Version
              Text(
                "Version 1.0.0",
                style: TextStyle(fontSize: 12, color: Color(0xFF9E9E9E)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
