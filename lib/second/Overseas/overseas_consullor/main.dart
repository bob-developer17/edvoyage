import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import 'button.dart';
import 'custom_appbar.dart';
import 'large_card.dart';
import 'mini_card.dart';
import 'timeslot.dart'; // Importing custom appbar

class overseas_consellor extends StatelessWidget {
  const overseas_consellor({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final appBarfontsize = height * 0.05; // Example: 60% of AppBar height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white, // Light grey background
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: appBarfontsize * 0.85, // Set the size of the back button
          ),
          color: primaryColor, // Set the color of the back button

          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Study Abroad',
          style: TextStyle(
            // Use GoogleFonts to apply Kanit
            fontSize: appBarfontsize * 0.85, // Set the font size to 18
            fontWeight: FontWeight.w700,
            color: primaryColor,
            fontFamily: 'Roboto',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight * 0.055, // Allows content to define height
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
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
                              'Slot Booking For Counsellor',
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
                      ]),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02, // Allows content to define height
              ),
              MiniCardSection(), // 🔴 3 Red Mini Cards Section
              const SizedBox(height: 13), // Spacing

              // Grey Divider
              const Divider(
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),

              const SizedBox(height: 13), // Spacing
              TimeSlotGrid(),

              const SizedBox(height: 30), // Spacing
              ConfirmSlotButton(), // 🔴 Confirm Slot Button
              const SizedBox(height: 20), // Spacing
            ],
          ),
        ),
      ),
    );
  }
}
