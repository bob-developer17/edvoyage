import 'package:flutter/material.dart';

// Add these extensions for cleaner code
extension SizeExtension on BuildContext {
  double hp(double percent) =>
      MediaQuery.of(this).size.height * (percent / 100);
  double wp(double percent) => MediaQuery.of(this).size.width * (percent / 100);
}

class MainCard extends StatefulWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  State<MainCard> createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  String selectedMood = ''; // ✅ Defined state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: context.hp(50),
          width: context.wp(90),
          padding: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromRGBO(192, 235, 231, 1),
            border: Border.all(color: Colors.teal, width: 1.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'How are you feeling today?',
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: context.wp(5),
                  fontFamily: 'Roboto',
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: context.hp(20),
                    width: context.wp(90),
                    margin: const EdgeInsets.only(top: 5),
                    child: Image.asset(
                      'assets/curving.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        moodButton(
                            context, 'Exhausted', 'assets/exhaustedB.png'),
                        SizedBox(width: context.wp(9)),
                        moodButton(context, 'Happy', 'assets/happy.png'),
                        SizedBox(width: context.wp(9)),
                        moodButton(context, 'Sad', 'assets/sadB.png'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  barDot(context.hp(1.2), 2, Colors.teal),
                  barDot(context.hp(2), 3, Colors.deepPurple),
                  barDot(context.hp(1.2), 2, Colors.teal),
                ],
              ),
              Text(
                selectedMood.isEmpty ? 'Select a Mood' : selectedMood,
                style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: context.wp(4),
                  fontFamily: 'Roboto',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Dot bar at the bottom
  Widget barDot(double height, double width, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(.25),
      ),
    );
  }

  // Mood button
  Widget moodButton(BuildContext context, String mood, String assetPath) {
    return SizedBox(
      height: context.hp(23),
      width: context.wp(23),
      child: TextButton(
        onPressed: () => setState(() => selectedMood = mood),
        child: Image.asset(
          assetPath,
          height: context.hp(23),
          width: context.wp(23),
        ),
      ),
    );
  }
}
