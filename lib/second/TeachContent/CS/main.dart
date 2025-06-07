import 'package:flutter/material.dart';
import 'package:frontend/second/TeachContent/notescard.dart';
import 'package:frontend/second/utils/directorytitle.dart';

import 'two.dart';

class TeachContentCSOne extends StatefulWidget {
  // Changed to StatefulWidget
  final List<dynamic> one;
  final List<dynamic> two;
  final List<dynamic> three;
  final List<dynamic> four;
  final List<dynamic> five;
  final List<dynamic> six;
  final List<dynamic> seven;

  // get the height of the screen

  // Constructor
  const TeachContentCSOne(
    this.one,
    this.two,
    this.three,
    this.four,
    this.five,
    this.six,
    this.seven, {
    super.key,
  });

  @override
  _TeachContentState createState() => _TeachContentState(); // Create state
}

class _TeachContentState extends State<TeachContentCSOne> {
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;
  // i need anotehr variable with 10% of the above screeenHeight
  double get screenHeight1 => screenHeight * 0.015;
  double get screenHeight2 => screenHeight * 0.12;
  double get screenHeight3 => screenHeight * 0.125;
  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.48;
  double get screenWidth3 => screenWidth * 0.7;
  double get fontsize1 => screenHeight * 0.025;
  double get fontsize2 => screenHeight * 0.018;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            'assets/logo_profile.png',
            width: fontsize1 * 7,
          ),
          backgroundColor: Colors.white),
      backgroundColor: Colors.grey.shade300,
      // Use widget.text1
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              DirectoryTitle(
                  text1: 'Clinical case', text2: 'None', text3: 'None'),
              _buildVideoCard(widget.one[0], widget.one[1]),
              _buildVideoCard(widget.two[0], widget.two[1]),
              _buildVideoCard(widget.three[0], widget.three[1]),
              _buildVideoCard(widget.four[0], widget.four[1]),
              _buildVideoCard(widget.five[0], widget.five[1]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoCard(String title, String topic) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
          onTap: () {
            if (title == 'Oral Cavity Examination') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TeachContentCSTwo(),
                ),
              );
            }
          },
          child: NotesCard(title: title, video: topic)),
    );
  }
}
