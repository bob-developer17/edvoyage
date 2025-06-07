import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend/screens/University_tabs/aboutTab.dart';
import 'package:frontend/screens/comingsoon.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/colors/colors.dart';
import '../../../../utils/responsive.dart';
import '../../_env/env.dart';
import '../home_screen/CourseDetails.dart';

class CoursesScreenTab extends StatefulWidget {
  CoursesScreenTab({Key? key}) : super(key: key);
  @override
  State<CoursesScreenTab> createState() => _CoursesScreenTabState();
}

class _CoursesScreenTabState extends State<CoursesScreenTab> {
  Measurements? size;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: color3, body: ComingSoon());
  }
}
