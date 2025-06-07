import 'package:flutter/material.dart';
import 'package:frontend/first/onboarding/screen_four.dart';
import 'package:frontend/first/onboarding/screen_three.dart';
import 'package:frontend/first/onboarding/screen_two.dart';

import 'package:frontend/utils/homescreenmaincard.dart';

import 'first/login/forgot_password.dart';
import 'first/login/sign_in.dart';
import 'first/onboarding/screen_one.dart';
import 'first/sidemenu.dart';
import 'first/splash/splash_screen.dart';
import 'second/Overseas/overseas1/main.dart';
import 'second/Overseas/overseas_consullor/main.dart';
import 'second/TeachContent/CS/two.dart';
import 'second/TeachContent/FC/one.dart';
import 'second/TeachContent/FC/two/main.dart';
import 'second/TeachContent/Illustrations/one.dart';
import 'second/TeachContent/MCQ/three/main.dart';
import 'second/TeachContent/MCQ/two.dart';
import 'second/TeachContent/main.dart';
import 'utils/BottomNavigation/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //     body: TeachContent(
        //   ['Video', '23 Topics', '200 Videos'],
        //   ['MCQ', '23 Topics', '200 Videos'],
        //   ['Clinical Case', '23 Topics', '200 Videos'],
        //   ['MCQ', '23 Topics', '200 Videos'],
        //   ['MCQ', '23 Topics', '200 Videos'],
        // )),
        // body: TeachContent(
        //   ['Video', '23 Topics', '200 Videos'],
        //   ['MCQ', '23 Topics', '200 Videos'],
        //   ['Clinical Case', '23 Topics', '200 Videos'],
        //   ['Flash Card', '23 Topics', '200 Videos'],
        //   ['MCQ', '23 Topics', '200 Videos'],
        // ),
        body: SplashScreen(),
        // body(),
      ),
    );
  }
}
