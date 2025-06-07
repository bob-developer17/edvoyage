import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:math' as math;

import '../utils/colors.dart';
import 'main.dart';

class Cavity_screen extends StatefulWidget {
  @override
  State<Cavity_screen> createState() => _Cavity_screenState();
}

class _Cavity_screenState extends State<Cavity_screen> {
  var isPressed = false;
  var isbookmark = false;
  var selectedIndex;
  Color color2 = Color.fromARGB(255, 97, 75, 75);
  Color color1 = Color.fromARGB(255, 34, 163, 29);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.3, // You can adjust the elevation as needed
          centerTitle: true,
          title: Container(
            width: 200, // Set the width of the container
            height: 200, // Set the height of the container
            child: Image.asset(
              'assets/edvoyagelogo1.png', // Replace with your image path
            ), // Replace with the actual image path
          ),
        ),
        body: cavity_page(),
      ),
    );
  }

  void displayModalBottomSheet(context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: whiteColor,
          ),
          height: 30,
          child: Column(
            children: [
              Container(
                height: 8,
                width: 60,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: cblack10,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cblack10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.book_online, size: 20),
                          ),
                          Text(
                            "Save",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: titlecolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cblack10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.rotate(
                            angle: -math.pi / 2,
                            child: IconButton(
                              icon: Icon(Icons.logout, color: titlecolor),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            "Share",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: titlecolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    margin: EdgeInsets.only(top: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: cblack10,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.report_outlined,
                              color: secondaryColor,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Report",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: secondaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
