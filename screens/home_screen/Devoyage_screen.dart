import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:reviews_slider/reviews_slider.dart';

import '../../utils/avatar.dart';

class DevoyageTab extends StatefulWidget {
  @override
  State<DevoyageTab> createState() => _DevoyageTabState();
}

class _DevoyageTabState extends State<DevoyageTab> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(soon),
          ),
          SizedBox(
            height: 20,
          ),

          Text(
            'COMING  SOON!!!!...',
            style: GoogleFonts.jost(
                letterSpacing: 3,
                fontSize: 27,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),

          // ReviewSlider(
          //   onChange: onChange1,
          // ),
        ],
      ),
    ));
  }
}
