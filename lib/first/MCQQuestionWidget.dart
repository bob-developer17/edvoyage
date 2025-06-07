import 'package:flutter/material.dart';
import 'package:frontend/utils/responsive.dart';
import '../../utils/colors/colors.dart';
import '30questions.dart'; // Import the questions from the file

DateTime now = DateTime.now();
int day = now.day;
Map<String, dynamic> currentItem = questions[day % questions.length];

class MCQQuestionWidget extends StatefulWidget {
  const MCQQuestionWidget({Key? key}) : super(key: key);

  @override
  _MCQQuestionWidgetState createState() => _MCQQuestionWidgetState();
}

class _MCQQuestionWidgetState extends State<MCQQuestionWidget> {
  int selectedOption = -1;

  Color optionColor = Colors.white;
  Color optionColor2 = Colors.white;
  Color optionColor3 = Colors.white;
  Color optionColor4 = Colors.white;

  @override
  Widget build(BuildContext context) {
    Measurements size = Measurements(MediaQuery.of(context).size);
    int correctAnswer = currentItem["answer"];
    int currentQuestionIndex = day;

    return SizedBox(
      height: size.hp(60),
      child: Container(
        padding: EdgeInsets.all(size.wp(3)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MCQ of the Day',
              style: TextStyle(
                fontSize: size.wp(3.6),
                color: ColorConst.greenColor,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: size.hp(1)),
            Text(
              'Which of these is a major difference between oogenesis and spermatogenesis?',
              style: TextStyle(
                fontSize: size.wp(5),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              strutStyle: const StrutStyle(height: 1.3),
            ),
            SizedBox(height: size.hp(2)),
            buildOption(
              index: 0,
              text:
                  "A - Spermatogenesis leads to two sperm, while oogenesis leads to one egg.",
              color: optionColor,
              onTap: () {
                setState(() {
                  selectedOption = 0;
                  optionColor = selectedOption == correctAnswer
                      ? Colors.green
                      : Colors.red;
                });
              },
              size: size,
            ),
            buildOption(
              index: 1,
              text:
                  "B - Oogenesis leads to four eggs while spermatogenesis leads to eight sperm.",
              color: optionColor2,
              onTap: () {
                setState(() {
                  selectedOption = 1;
                  optionColor2 = selectedOption == correctAnswer
                      ? Colors.green
                      : Colors.red;
                });
              },
              size: size,
            ),
            buildOption(
              index: 2,
              text:
                  "C - Spermatogenesis leads to four sperm, while oogenesis leads to one egg.",
              color: optionColor3,
              onTap: () {
                setState(() {
                  selectedOption = 2;
                  optionColor3 = selectedOption == correctAnswer
                      ? Colors.green
                      : Colors.red;
                });
              },
              size: size,
            ),
            buildOption(
              index: 3,
              text:
                  "D - Oogenesis leads to two eggs while spermatogenesis leads to one sperm.",
              color: optionColor4,
              onTap: () {
                setState(() {
                  selectedOption = 3;
                  optionColor4 = selectedOption == correctAnswer
                      ? Colors.green
                      : Colors.red;
                });
              },
              size: size,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOption({
    required int index,
    required String text,
    required Color color,
    required VoidCallback onTap,
    required Measurements size,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.hp(1)),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.wp(100),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: cdivider,
              width: 1,
            ),
          ),
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: size.wp(3.5),
              color: Colors.black,
            ),
            softWrap: true,
          ),
        ),
      ),
    );
  }
}
