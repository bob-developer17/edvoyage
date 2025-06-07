import 'package:flutter/material.dart';
import 'package:frontend/utils/colors/colors.dart';

class TimeSlotGrid extends StatelessWidget {
  const TimeSlotGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get parent size
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double spacing = screenWidth * 0.02; // 2% of screen width
    double cardheight = screenHeight * 0.1; // 20% of screen height
    double cardfontsize = screenHeight * 0.02; // 2% of screen height
    //  make the cardfontsize as globally accessible

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: spacing),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight, // Fixed height
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Unavailable",
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02, // Space between rows
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02, // Space between rows
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02, // Space between rows
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight, // Fixed height
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Unavailable",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02, // Space between rows
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight, // Fixed height
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "UnAvailable",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02, // Space between rows
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight, // Fixed height
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02, // Space between rows
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight, // Fixed height
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Unavailable",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Unavailable",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.02, // Space between rows
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight, // Fixed height
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
                SizedBox(
                  width: screenWidth * 0.25,
                  height: cardheight,
                  child: TimeSlotCard(
                    time: "10:00 AM",
                    status: "Available",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget for a single card
class TimeSlotCard extends StatefulWidget {
  final String time;
  final String status;

  const TimeSlotCard({
    Key? key,
    required this.time,
    required this.status,
  }) : super(key: key);

  @override
  State<TimeSlotCard> createState() => _TimeSlotCardState();
}

class _TimeSlotCardState extends State<TimeSlotCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double cardfontsize = height * 0.02;
    return Column(
      children: [
        // Top 60% - Time Text
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              border: Border.all(
                color:
                    widget.status == "Available" ? primaryColor : Colors.grey,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                widget.time,
                style: TextStyle(
                  fontSize: cardfontsize, // Adjusted font size
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ),

        // Bottom 40% - Status Text with Conditional Background
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              color: widget.status == "Available" ? primaryColor : Colors.grey,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
              border: Border.all(
                color:
                    widget.status == "Available" ? primaryColor : Colors.grey,
                width: 2,
              ),
            ),
            child: Center(
              child: Text(
                widget.status,
                style: TextStyle(
                  fontSize: cardfontsize, // Adjusted font size
                  color: widget.status == "Available"
                      ? Colors.white
                      : Colors.black,
                  fontWeight: FontWeight.w300,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
