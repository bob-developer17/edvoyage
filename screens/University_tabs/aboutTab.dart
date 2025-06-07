import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../../widgets/long_button.dart';
import '../../../widgets/tver_modal.dart';
import '../../_env/env.dart';
import '../../utils/avatar.dart';
import 'package:http/http.dart' as http;

// Define constants for asset paths
const String fmgeAssetPath = "assets/badge_1_(3).png";
const String badgeAssetPath = "assets/badge_1_(2).png";
const String plabAssetPath = "assets/badge 1 (1).png";
const String trophyAssetPath = "assets/trophy_1.png";
const String library = "assets/books_1.png";
const String accomodation = "assets/home.png";
const String classroom = "assets/book-reader.png";
const String lab = "assets/flask.png";
const String clinic = "assets/clinic-medical.png";
const String ground = "assets/football-american.png";

class University {
  int id;
  String name;
  String location;
  String country;
  String logo;
  String about;
  int ranking;
  int undergraduate_programs;
  bool is_FMGE_affiliated;
  bool is_USML_affiliated;
  bool is_PLAB_affiliated;
  University({
    required this.id,
    required this.name,
    required this.location,
    required this.country,
    required this.logo,
    required this.about,
    required this.ranking,
    required this.undergraduate_programs,
    required this.is_FMGE_affiliated,
    required this.is_USML_affiliated,
    required this.is_PLAB_affiliated,
  });

  factory University.fromJson(Map<String, dynamic> json) {
    final randomRanking = json['ranking'] ?? Random().nextInt(301);
    final undergraduate_programscount =
        json['undergraduate_programs'] ?? Random().nextInt(20);
    return University(
      name: json['name'] ?? 'Default Name',
      location: json['location'] ?? 'Default Location',
      country: json['country'] ?? 'Default Description',
      logo: json['logo'] ?? 'Default Logo',
      id: json['id'] ?? 0,
      about: json['about'] ??
          'This data Can be Added from the BAckend API,This data Can be Added from the BAckend API,This data Can be Added from the BAckend API,This data Can be Added from the BAckend API,This data Can be Added from the BAckend API,This data Can be Added from the BAckend API',
      ranking: randomRanking,
      undergraduate_programs: json['undergraduate_programs'] ?? 0,
      is_FMGE_affiliated: json['is_FMGE_affiliated'] ?? false,
      is_USML_affiliated: json['is_USML_affiliated'] ?? true,
      is_PLAB_affiliated: json['is_PLAB_affiliated'] ?? false,
    );
  }
}

late University university;

class AboutTab extends StatefulWidget {
  @override
  AboutTab({Key? key}) : super(key: key);
  State<AboutTab> createState() => _AboutTabState();
}

class _AboutTabState extends State<AboutTab> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final is_FMGE_affiliated;
    final is_USML_affiliated;
    final is_PLAB_affiliated;
    final labelTextStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
      color: titlecolor,
    );

    is_FMGE_affiliated = "Affiliated";
    is_USML_affiliated = "Affiliated";
    is_PLAB_affiliated = "Affiliated";

    return Scaffold(
      backgroundColor: color3,
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About University",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Cprimary,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: titlecolor,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Established in 1936, Tver State Medical Univ ersity is a higher-education institution loc ated in the medium city of Tver (population range of 250,000-499,999 inhabitants), Tver Oblast. Officially recognized by the Ministry of Health of the Russian Federation, Tver State Medical University is a coeducational Russian higher education institution.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.5,
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildInfoCard(
                      labelTextStyle,
                      '# 500',
                      "World University",
                      "Ranking",
                      trophyAssetPath,
                    ),
                    buildInfoCard(
                      labelTextStyle,
                      "5",
                      "Undergraduate",
                      "Programs",
                      undergraduate,
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: grey2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildInfoCard(
                      labelTextStyle,
                      "FMGE",
                      is_FMGE_affiliated,
                      "",
                      fmgeAssetPath,
                    ),
                    buildInfoCard(
                      labelTextStyle,
                      "USML",
                      is_USML_affiliated,
                      "",
                      badgeAssetPath,
                    ),
                    buildInfoCard(
                      labelTextStyle,
                      "PLAB",
                      is_PLAB_affiliated,
                      "",
                      plabAssetPath,
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: grey2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildLocationCard("Library", library),
                    buildLocationCard("Accomodation", accomodation),
                    buildLocationCard("Class Rooms", classroom),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildLocationCard("Laboratories", lab),
                    buildLocationCard("clinic", clinic),
                    buildLocationCard("Play ground", ground),
                  ],
                ),
              ],
            ),
          ),
          vGap(3),
          LongButton(
            action: () {
              displayModalBottomSheet(context);
            },
            text: 'Apply Now',
          ),
          vGap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "--------- De voyage --------",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: grey2,
                ),
              ),
            ],
          ),
          vGap(80),
        ],
      ),
    );
  }

  Widget buildInfoCard(
    TextStyle labelTextStyle,
    String textup,
    String textdown1,
    String textdown2,
    String imageAssetPath,
  ) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: thirdColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageAssetPath,
                height: 50,
                width: 50,
              ),
              vGap(5),
              Text(
                textup,
                style: labelTextStyle,
              ),
              vGap(5),
              Text(
                "$textdown1",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
                //  "$textdown1\n$textdown2",
                maxLines: 2,
              ),
              Text(
                "$textdown2",
                style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLocationCard(String text, String imageAssetPaths) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: thirdColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageAssetPaths,
                height: 50,
                width: 50,
              ),
              vGap(5),
              Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void displayModalBottomSheet(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: whiteColor,
            ),
            // Adjust the height based on your needs, e.g., getHeight(context) / 2
            height: MediaQuery.of(context).size.height * 0.42,
            child: Column(
              children: [Expanded(child: DropDownDemo())],
            ),
          );
        });
  }
}

class displayCards extends StatelessWidget {
  displayCards({Key? key, required this.icon, required this.text})
      : super(key: key);

  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: thirdColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              vGap(5),
              Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
