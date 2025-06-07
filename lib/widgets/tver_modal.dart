import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../_env/env.dart';
import '../utils/colors/colors.dart';
import '../utils/responsive.dart';
import 'package:http/http.dart' as http;

class DropDownDemo extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();

  @override
  DropDownDemo({Key? key}) : super(key: key);
}

class _DropDownDemoState extends State<DropDownDemo> {
  String dropdownValue = 'January';
  String yearValue = '2023';
  String email = '';
  Measurements? size;

  @override
  Widget build(BuildContext context) {
    String? mobilenumber;

    size = Measurements(MediaQuery.of(context).size);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: size?.hp(2)),
          Center(
            child: Text(
              "Apply university",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: size?.hp(2)),
          Text(
            "Choose Intake Month",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Container(
            height: 50,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey4),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey4),
                ),
                filled: true,
                fillColor: grey4,
                contentPadding: EdgeInsets.only(left: 10, right: 10),
              ),
              dropdownColor: grey4,
              value: dropdownValue,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>[
                'January',
                'February',
                'March',
                'May',
                'June',
                'July',
                'August',
                'September',
                'October',
                'November',
                'December',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 20),
                  ),
                );
              }).toList(),
            ),
          ),
          Text(
            "Choose Intake year",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Container(
            height: 50,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey4),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey4),
                ),
                filled: true,
                fillColor: grey4,
                contentPadding: EdgeInsets.only(left: 10, right: 10),
              ),
              dropdownColor: grey4,
              value: yearValue,
              onChanged: (String? newValue) {
                setState(() {
                  yearValue = newValue!;
                });
              },
              items: <String>[
                '2023',
                '2024',
                '2025',
                '2026',
                '2027',
                '2028',
                '2029',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 20),
                  ),
                );
              }).toList(),
            ),
          ),
          Text(
            "Your Mail id ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Container(
            height: 50,
            child: TextFormField(
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                fillColor: grey4,
                labelText: 'Email id',
                isDense: true,
                filled: true,
                hintText: " ",
                hintStyle: TextStyle(fontFamily: 'Roboto', color: textColor),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: grey4),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: grey4),
                ),
              ),
            ),
          ),
          SizedBox(height: size?.hp(3)),
          Container(
            height: size?.hp(5),
            width: getWidth(context),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {
                () {};
              },
              child: Text(
                "Submit",
                style: TextStyle(
                  letterSpacing: 2,
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  color: thirdColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
