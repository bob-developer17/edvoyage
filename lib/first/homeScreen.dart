import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:frontend/widgets/long_button.dart';
import 'package:frontend/utils/colors/colors.dart';
import 'package:frontend/utils/homescreenmaincard.dart';
import 'package:frontend/utils/responsive.dart';
import 'package:frontend/utils/avatar.dart';
import 'MCQQuestionWidget.dart';
import 'ScholarshipScreen.dart';
import 'sidemenu.dart';

class HomeData {
  final List<dynamic> questionOfTheDayData;

  HomeData({required this.questionOfTheDayData});
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Measurements? size;
  int universityLength = 0;
  List<String> NotificationList = [];

  static const IconData school = IconData(0xe559, fontFamily: 'MaterialIcons');

  @override
  void initState() {
    super.initState();
    // You can fetch universities or other initial data here
  }

  @override
  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop(); // Exit app on back
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(school, color: primaryColor),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Sidebar()),
              );
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0.2,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset(edvoyagelogo1),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: primaryColor),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Prevent overflow
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.35, // Adjusted height
                child: MainCard(),
              ),
              // const SizedBox(height: 10),
              // _buildExploreSection(),
              const SizedBox(height: 10),
              SizedBox(
                child: MCQQuestionWidget(),
              ),
              const SizedBox(height: 10),
              SizedBox(
                child: MCQQuestionWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildExploreSection() {
  //   return Center(
  //     child: Container(
  //       margin: const EdgeInsets.symmetric(vertical: 10),
  //       height: size?.hp(30),
  //       width: size?.wp(95),
  //       decoration: BoxDecoration(
  //         color: thirdColor,
  //         borderRadius: BorderRadius.circular(10),
  //         boxShadow: [
  //           BoxShadow(
  //             offset: const Offset(1, 1),
  //             blurRadius: 2,
  //             color: grey2,
  //             spreadRadius: 2,
  //           ),
  //         ],
  //       ),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Text(
  //             'Explore Courses & Universities',
  //             textScaleFactor: 1.6,
  //             style: TextStyle(
  //               color: primaryColor,
  //               fontWeight: FontWeight.w800,
  //             ),
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //             children: [
  //               _buildStatCard(
  //                 label: 'Universities',
  //                 count: universityLength.toString(),
  //                 image: universityimage,
  //               ),
  //               _buildStatCard(
  //                 label: 'Courses',
  //                 count: '30,004+',
  //                 image: coursesimage,
  //               ),
  //             ],
  //           ),
  //           LongButton(
  //             action: () {
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(
  //                     builder: (_) => ExploreUniversitiesScreen()),
  //               );
  //             },
  //             text: 'Explore Now',
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildStatCard({
    required String label,
    required String count,
    required String image,
  }) {
    return Container(
      height: size?.hp(14),
      width: size?.wp(42),
      decoration: BoxDecoration(
        color: thirdColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 0),
            spreadRadius: 1,
            color: grey2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size?.hp(4.5),
            width: size?.wp(9.6),
            child: Image.asset(image),
          ),
          Text(
            count,
            textScaleFactor: 1.5,
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );
  }
}
