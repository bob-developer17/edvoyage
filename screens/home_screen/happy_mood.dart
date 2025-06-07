import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/long_button.dart';
import '../exploreUniversity_screen/exploreUniversitiesScreen.dart';
import '../notification/notification.dart';

class Happy extends StatefulWidget {
  const Happy({Key? key}) : super(key: key);

  @override
  State<Happy> createState() => _HappyState();
}

class _HappyState extends State<Happy> {
  Measurements? size;
  var selectedIndex;

  @override
  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Container(
          width: 200, // Set the width of the container
          height: 200, // Set the height of the container
          child:
              Image.asset(edvoyagelogo1), // Replace with the actual image path
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: primaryColor,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationScreen(),
                ),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: size?.hp(6),
                  width: size?.wp(95),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(192, 235, 231, 1),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    'Everyday is a new day !',
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  height: size?.hp(30),
                  width: size?.wp(95),
                  decoration: BoxDecoration(
                    color: thirdColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 2,
                        color: grey2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Explore Courses & Universities',
                        textScaleFactor: 1.8,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: size?.hp(14),
                            width: size?.wp(42),
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                  color: grey2,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: size?.hp(4.5),
                                  width: size?.wp(9.6),
                                  child: Image.asset(
                                    universityimage,
                                  ),
                                ),
                                Text(
                                  '300+',
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  'Universities',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: size?.hp(14),
                            width: size?.wp(42),
                            decoration: BoxDecoration(
                              color: thirdColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 0),
                                  spreadRadius: 1,
                                  color: grey2,
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: size?.hp(4.5),
                                  width: size?.wp(9.6),
                                  child: Image.asset(
                                    coursesimage,
                                  ),
                                ),
                                Text(
                                  '30,001+',
                                  textScaleFactor: 1.5,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                Text(
                                  'Courses',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      LongButton(
                        action: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ExploreUniversitiesScreen(),
                            ),
                          );
                        },
                        text: 'Explore Now',
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                itemCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        EdgeInsets.only(top: 10, left: 5, right: 5, bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MCQ of the day",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w800,
                                  color: primaryColor,
                                ),
                              ),
                              Divider(
                                thickness: size?.hp(0.1),
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Which of these is a major difference between oogenesis and spermatogenesis?", // Replace with your question text
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              // Option A
                              buildOption("A",
                                  "Spermatogenesis leaddddddds to two sperm,while oogenesis leads to one egg"),
                              buildOption("B",
                                  "Oogenesis leads to four egg while spermotogenesis"),
                              buildOption("C",
                                  "Spermatogenesis leads to four sperm, while oogenesis leads to one egg"),
                              buildOption("D",
                                  "Oogenesis leads to two eggs while spermatogenesis leads to one sperm"),

                              Divider(
                                thickness: size?.hp(0.1),
                                color: Colors.grey,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 8, bottom: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        // Handle bookmark tap
                                      },
                                      child: Icon(
                                        Icons.bookmark_border,
                                        // Replace with your desired color
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              // Placeholder for MCQ widgets, you can add your UI here
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildOption(String choiceLetter, String choiceText) {
  return Padding(
    padding: const EdgeInsets.all(7.0),
    child: GestureDetector(
      onTap: () {
        // Handle option tap
      },
      child: Container(
        height: 50, // Replace with your desired height
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            color: Colors.grey,
            width: 0.6,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '$choiceLetter - ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: choiceText, // Replace with your option text
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
