import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomCard extends StatefulWidget {
  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double padding = screenWidth * 0.05;
    double iconSize = screenWidth * 0.06;
    double profileSize = screenWidth * 0.15;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(padding * 0.5),
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: profileSize / 2,
                        backgroundImage: AssetImage(
                          'assets/profile.png',
                        ), // Replace with your image
                      ),
                      SizedBox(width: padding * 0.5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Samuel aaaaaaaaa',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.05,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.verified,
                                color: Colors.green,
                                size: iconSize * 0.8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert, size: iconSize),
                ],
              ),
              SizedBox(height: padding * 0.8),

              // Middle Column (Text)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: padding * 0.5),
                    child: Text(
                      '${String.fromCharCode(65 + index)}. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: screenWidth * 0.04),
                    ),
                  ),
                ),
              ),
              SizedBox(height: padding * 0.8),

              // Bottom Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
                          size: iconSize,
                          color: primaryColor,
                        ),
                        onPressed: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                      ),
                      SizedBox(width: padding * 0.5),
                      Icon(
                        Icons.message_outlined,
                        size: iconSize,
                        color: primaryColor,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.notifications_none,
                    size: iconSize,
                    color: primaryColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
