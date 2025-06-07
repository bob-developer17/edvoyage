import 'package:flutter/material.dart';
import 'package:frontend/second/TeachContent/notescard.dart';
import 'package:frontend/second/utils/directorytitle.dart';
import 'package:frontend/second/utils/minicustomappbar.dart';

import 'two/main.dart';

class TeachContentFlashOne extends StatefulWidget {
  // Constructor
  TeachContentFlashOne({
    super.key,
  });

  @override
  _TeachContentCSOneState createState() =>
      _TeachContentCSOneState(); // Create state
}

class _TeachContentCSOneState extends State<TeachContentFlashOne> {
  final fileNames = [
    "Amino Acid",
    "Biochemistry",
    "Cholesterol",
    "ETC Overview",
    "ETC Part one",
    "ETC Part three",
    "ETC Part two",
    "FA Synthesis Part one",
    "FA Synthesis Part two",
    "Fatty Acid Oxidation Part one",
    "Fatty Acid Oxidation Part two",
    "Gluconeogenesis",
    "Glycogenesis",
    "Glycogenolysis",
    "Glycolysis",
    "Ketone",
    "Lipoprotein",
    "Mobilization of Triglycerides",
    "Nucleotide Synthesis Purine Pyrimidine Synthesis",
    "Pentose Phosphate Pathway",
    "Regulation of Gluconeogenesis",
    "Regulation of Glycogen",
    "Regulation of Glycolysis",
    "Regulation of Pentose Phosphate Pathway",
    "Regulation of Transition Stage",
    "The Krebs Cycle",
    "The Metabolic Map Carbohydrates Part one",
    "The Metabolic Map Lipids Part two",
    "The Metabolic Map Proteins Part three",
    "Transition Stage Preparatory Phase",
    "Triglyceride Synthesis",
    "Urea Cycle",

    // Appended exact names from your files:
    "Biochemistry Enzyme Inhibition atf.pdf",
    "Biochemistry Michaelis Menten & Lineweaver Burk Plot atf.pdf",
    "Biochemistry Michaelis Menten Equation atf.pdf",
    "Electron Transport Chain DETAILED Part 1 atf.pdf",
    "Electron Transport Chain DETAILED Part 2 atf.pdf",
    "Electron Transport Chain DETAILED Part 3 atf.pdf",
    "Fatty Acid Oxidation Part one atf.pdf",
    "Fatty Acid Oxidation Part two atf.pdf",
    "Fatty Acid Synthesis Part one atf.pdf",
    "Fatty Acid Synthesis Part two atf.pdf",
    "Ketone Metabolism atf.pdf",
    "Lipoprotein Chylomicrons, VLDL atf.pdf",
    "Nucleotide Synthesis Purine & Pyrimidine atf.pdf",
    "Regulation of Glycogen Metabolism atf.pdf",
    "Regulation of the Transition Stage atf.pdf",
    "The Metabolic Map Carbohydrates atf.pdf",
    "The Metabolic Map Lipids atf.pdf",
    "The Metabolic Map Proteins atf.pdf",
  ];

  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;

  // Additional height value - 10% of screenHeight
  double get screenHeight10Percent => screenHeight * 0.1;

  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.12;
  double get screenHeight3 => screenHeight * 0.125;

  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.45;
  double get screenWidth3 => screenWidth * 0.7;

  double get fontsize1 => screenHeight * 0.025;
  double get fontsize2 => screenHeight * 0.018;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomMiniAppBar(),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              DirectoryTitle(
                text1: 'Flash Card',
                text2: 'None',
                text3: 'None',
              ),
              // Loop through all fileNames and build cards
              for (var title in fileNames) _buildVideoCard(title),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoCard(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
          onTap: () {
            if (title == 'Human Anatomy') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Two(),
                ),
              );
            }
            ;
          },
          child: NotesCard(title: title, video: 'Dr.Ranchodas Chanchad')),
    );
  }
}
