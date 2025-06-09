import 'package:flutter/material.dart';
import 'package:frontend/second/utils/directorytitle.dart';

import 'CS/main.dart';
import 'FC/one.dart';
import 'MCQ/one.dart';
import 'Video/one.dart';
import 'notescard.dart';

class TeachContent extends StatefulWidget {
  // Changed to StatefulWidget
  final List<dynamic> one;
  final List<dynamic> two;
  final List<dynamic> three;
  final List<dynamic> four;
  final List<dynamic> five;

  // get the height of the screen

  // Constructor
  const TeachContent(
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

class _TeachContentState extends State<TeachContent> {
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;
  // i need anotehr variable with 10% of the above screeenHeight

  double get fontsize1 => screenHeight * 0.025;
  double get fontsize2 => screenHeight * 0.018;
  double get directoryheight => screenHeight * 0.04;
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
      // Use widget.text1v
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              Container(
                  height: directoryheight,
                  child: DirectoryTitle(
                      text1: 'None', text2: 'None', text3: 'None')),
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
          if (title == 'Video') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeachContentVideo(
                    // ['Human Anatomy', '', '10 Modules'],
                    // ['Physiology', '', '10 Modules'],
                    // ['Biochemistry', '', '10 Modules'],
                    // ['Pharmacology', '', '10 Modules'],
                    // ['Pathology', '', '10 Modules'],
                    ),
              ),
            );
          }
          if (title == 'MCQ') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeachContentMCQOne(contentLists: [
                  ['Human Anatomy', topic, videos],
                  ['Physiology', topic, videos],
                  ['BioChemistry', topic, videos],
                  ['Pharmacology', topic, videos],
                  ['Pathology', topic, videos],
                  ['Microbiology', topic, videos],
                  ['Forensic medicine and Toxicology', topic, videos],
                  ['Community Medicine', topic, videos],
                  ['General Medicine', topic, videos],
                  ['Respiratory Medicine', topic, videos],
                  ['Orthopedics', topic, videos],
                  ['Pediatrics', topic, videos],
                  ['Psychiatry', topic, videos],
                  ['Dermatology,Venereology and Leprosy', topic, videos],
                  ['Otorhinolaryngology', topic, videos],
                  ['Obstetrics and Gynecology', topic, videos],
                  ['General Surgery', topic, videos],
                  ['Radiology', topic, videos],
                  ['Orthopedics', topic, videos],
                  ['Anesthesiology', topic, videos],
                  ['Radiodiagnosis', topic, videos],
                  ['Radiotherapy', topic, videos],
                  ['Dentistry', topic, videos],
                  ['Ophthalmology', topic, videos],
                  ['Plastic Surgery', topic, videos],
                  ['Urology', topic, videos],
                  ['Cardiology', topic, videos],
                ]),
              ),
            );
          }
          // TeachContentCSOne()
          if (title == 'Clinical Case') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeachContentCSOne(
                  ['Oral Cavity Examination', 'Dr.Ranchodas Chanchad'],
                  ['Auscultation Examnation', 'Dr.Ranchodas Chanchad'],
                  ['BioChemistry', 'Dr.Ranchodas Chanchad'],
                  ['Pneumonia Examination', 'Dr.Ranchodas Chanchad'],
                  ['Renal System Examination', 'Dr.Ranchodas Chanchad'],
                  ['Heart Functioning Examination', 'Dr.Ranchodas Chanchad'],
                  ['Retina Examination', 'Dr.Ranchodas Chanchad'],
                ),
              ),
            );
          }
          if (title == 'Flash Card') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeachContentFlashOne(),
              ),
            );
          }
        },
        child: NotesCard(title: title, topic: topic, video: videos),
      ),
    );
  }
}
