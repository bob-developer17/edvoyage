import 'package:flutter/material.dart';
import 'package:frontend/second/utils/directorytitle.dart';

import '../MCQ/two.dart';
import '../notescard.dart';
import 'two.dart';

class TeachContentVideo extends StatefulWidget {
  // Changed to StatefulWidget
  final List<dynamic> one;
  final List<dynamic> two;
  final List<dynamic> three;
  final List<dynamic> four;
  final List<dynamic> five;

  // get the height of the screen

  // Constructor
  const TeachContentVideo(
    this.one,
    this.two,
    this.three,
    this.four,
    this.five, {
    super.key,
  });

  @override
  _TeachContentState createState() => _TeachContentState(); // Create state
}

class _TeachContentState extends State<TeachContentVideo> {
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;
  // i need anotehr variable with 10% of the above screeenHeight
  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.06;
  double get screenHeight3 => screenHeight * 0.125;
  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.05;
  double get screenWidth3 => screenWidth * 0.67;
  double get fontsize1 => screenHeight * 0.023;
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
              DirectoryTitle(text1: 'Video', text2: 'None', text3: 'None'),
              _buildVideoCard(widget.one[0], widget.one[1], widget.one[2]),
              _buildVideoCard(widget.two[0], widget.two[1], widget.two[2]),
              _buildVideoCard(
                widget.three[0],
                widget.three[1],
                widget.three[2],
              ),
              _buildVideoCard(widget.four[0], widget.four[1], widget.four[2]),
              _buildVideoCard(widget.five[0], widget.five[1], widget.five[2]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoCard(String title, String topic, String videos) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
        onTap: () {
          // Handle tap
          if (title == 'Human Anatomy') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeachContentVideoTwo(),
              ),
            );
          }
        },
        child: // Changed to GestureDetector
            NotesCard(title: title, topic: topic, video: videos),
      ),
    );
  }
}
