import 'package:flutter/material.dart';
import 'package:frontend/second/Overseas/overseas_consullor/main.dart';

import '../../utils/colors.dart';
import '../../utils/overseascard.dart';
import '../../utils/scrollablehorizontal.dart';

class Overseas1 extends StatefulWidget {
  @override
  State<Overseas1> createState() => _Overseas1State();
}

class _Overseas1State extends State<Overseas1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double appbarfont = screenHeight * 0.04;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: appbarfont,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Study Abroad',
          style: TextStyle(
            // Use GoogleFonts to apply Kanit
            fontSize: appbarfont, // Set the font size to 18
            fontWeight: FontWeight.values[5],
            color: primaryColor,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(right: 1),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.055, // Allows content to define height
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/subtract.png',
                              width: screenWidth * 0.08, // Responsive width
                              height: screenHeight * 0.08, // Responsive height
                            ),
                            SizedBox(width: 10), // Fixed horizontal space
                            Text(
                              'Shortlist Universities',
                              style: TextStyle(
                                fontSize: screenHeight *
                                    0.028, // Responsive font size
                                fontWeight: FontWeight.w600,
                                color: primaryColor,
                                fontFamily: 'Roboto',
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            // overseas_consellor()
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    overseas_consellor(), // Replace with your desired page
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/Next.png',
                            width: screenWidth * 0.1, // Responsive width
                            height: screenHeight * 0.1, // Responsive height
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.01, // Allows content to define height
              ),
              InfiniteScrollableWidget(),
              OverseasCard(
                universityName: 'University of Oxford',
                location: 'Oxford, England',
                imageUrl: 'assets/university1.png',
                detailsValues: ['1', '\$30,000', 'Available', '2024-01'],
              ),
              OverseasCard(
                universityName: 'Harvard University',
                location: 'Cambridge, USA',
                imageUrl: 'assets/university1.png',
                detailsValues: ['2', '\$50,000', 'Available', '2024-05'],
              ),
              OverseasCard(
                universityName: 'University of Melbourne',
                location: 'Melbourne, Australia',
                imageUrl: 'assets/university1.png',
                detailsValues: ['3', '\$40,000', 'Available', '2024-09'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
