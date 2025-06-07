import 'package:flutter/material.dart';
import 'package:frontend/second/utils/directorytitle.dart';

import '../notescard.dart';
import 'two.dart';

class TeachContentMCQOne extends StatefulWidget {
  final List<List<dynamic>> contentLists; // Optimized: List of Lists

  const TeachContentMCQOne({
    required this.contentLists,
    super.key,
  });

  @override
  _TeachContentState createState() => _TeachContentState();
}

class _TeachContentState extends State<TeachContentMCQOne> {
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;

  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.12;
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              DirectoryTitle(text1: 'MCQ', text2: 'None', text3: 'None'),
              ...widget.contentLists
                  .map((list) => _buildVideoCard(list[0], list[1]))
                  .toList(),
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
          if (title == 'Human Anatomy') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeachContentMCQTwo(),
              ),
            );
          }
        },
        child: NotesCard(title: title, topic: '', video: topic),
      ),
    );
  }
}
