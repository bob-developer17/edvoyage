import 'package:flutter/material.dart';

import 'card1.dart';

class DropdownEnhanced extends StatefulWidget {
  @override
  _DropdownEnhancedState createState() => _DropdownEnhancedState();
}

class _DropdownEnhancedState extends State<DropdownEnhanced> {
  final List<String> options = [
    "NEET 2023",
    "1st year MBBS",
    "2nd year MBBS",
    "3rd year MBBS",
    "4th year MBBS",
    "Overseas Edu",
    "Next Exam",
    "X Group",
  ];

  String selectedOption = "NEET 2023";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.02),
          child: GestureDetector(
            onTap: () {
              _showCustomDropdown(context);
            },
            child: Container(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.02,
                horizontal: screenWidth * 0.03,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade400),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    selectedOption,
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, size: screenWidth * 0.06),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.02),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomCard(), // Imported widget
        ),
        Padding(padding: EdgeInsets.all(8.0), child: CustomCard()),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomCard(), // Imported widget
        ),
        Padding(padding: EdgeInsets.all(8.0), child: CustomCard()),
      ],
    );
  }

  void _showCustomDropdown(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        double screenWidth = MediaQuery.of(context).size.width;
        double screenHeight = MediaQuery.of(context).size.height;

        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.5,
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Select an Option",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Divider(thickness: 1, color: Colors.grey),
                Expanded(
                  child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          options[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                        onTap: () {
                          setState(() {
                            selectedOption = options[index];
                          });
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
