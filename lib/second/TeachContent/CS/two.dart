import 'package:flutter/material.dart';
import 'package:frontend/second/TeachContent/CS/banner.dart';
import 'package:frontend/second/TeachContent/CS/gatherequipments.dart';
import 'package:frontend/second/TeachContent/CS/introduction.dart';
import 'package:frontend/second/TeachContent/CS/tableofcontents.dart';

import '../../CavityScreen/appbar.dart';
import '../../utils/directorytitle.dart';
import 'customappbar.dart';

class TeachContentCSTwo extends StatefulWidget {
  @override
  _TeachContentCSTwoState createState() => _TeachContentCSTwoState();
}

class _TeachContentCSTwoState extends State<TeachContentCSTwo> {
  final List<String> _itemTexts = [
    'Introduction to Oral Cavity',
    'Anatomy of Oral Structures',
    'Common Oral Diseases',
    'Oral Hygiene Practices',
    'Dental Examination',
    'Understanding Dental',
    'Oral Cancer Screening',
    'Post-Examination Care',
  ];

  List<bool> _isExpanded = List.generate(8, (_) => false);

  @override
  Widget build(BuildContext context) {
    double textSize = MediaQuery.of(context).size.width * 0.05;
    double paddingarround = MediaQuery.of(context).textScaler.scale(20);
    final List<Widget> _customWidgets = [
      Padding(
        padding: EdgeInsets.symmetric(vertical: paddingarround),
        child: tableofcontents(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: paddingarround),
        child: gatherequipments(),
      ),
      Introduction(),
      Padding(
        padding: EdgeInsets.symmetric(vertical: paddingarround),
        child: Text('Content for Oral Hygiene Practices',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: textSize,
              color: Colors.black,
            )),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: paddingarround),
        child: Text('Content for Dental Examination',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: textSize,
              color: Colors.black,
            )),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: paddingarround),
        child: Text('Content for Understanding Dental',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: textSize,
              color: Colors.black,
            )),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: paddingarround),
        child: Text('Content for Oral Cancer Screening',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: textSize,
              color: Colors.black,
            )),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: paddingarround),
        child: Text('Content for Post-Examination Care',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: textSize,
              color: Colors.black,
            )),
      ),
    ];
    return Scaffold(
      appBar: clilincalappbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DirectoryTitle(
              text1: 'Clinical Case',
              text2: 'Oral Cavity',
              text3: 'None',
            ),
            CustomBanner(
              imagePath: 'assets/banner.png',
              titleText: 'Oral Cavity Examination',
              subtitleText: 'Dr. Ranchodas Chanchad',
            ),
            //   ListView.builder(
            //     shrinkWrap: true,
            //     physics: NeverScrollableScrollPhysics(),
            //     itemCount: _itemTexts.length,
            //     itemBuilder: (context, index) {
            //       return Column(
            //         children: [
            //           Container(
            //             decoration: BoxDecoration(
            //               color: Colors.white,
            //               border: BorderDirectional(
            //                 bottom: BorderSide(
            //                   color: Colors.grey,
            //                   width: 1,
            //                 ),
            //               ),
            //             ),
            //             padding: EdgeInsets.symmetric(vertical: 2),
            //             child: ListTile(
            //               title: Text(
            //                 _itemTexts[index],
            //                 style: TextStyle(
            //                   fontSize: textSize,
            //                   fontWeight: FontWeight.bold,
            //                   color: Colors.green[800],
            //                 ),
            //               ),
            //               trailing: GestureDetector(
            //                 onTap: () {
            //                   setState(() {
            //                     _isExpanded[index] = !_isExpanded[index];
            //                   });
            //                 },
            //                 child: Image.asset(
            //                   _isExpanded[index]
            //                       ? 'assets/dropdown.png'
            //                       : 'assets/dropup.png',
            //                   width: textSize * 1,
            //                 ),
            //               ),
            //             ),
            //           ),
            //           if (_isExpanded[index]) _customWidgets[index],
            //         ],
            //       );
            //     },
            //   ),
            // ],
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _itemTexts.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _isExpanded[index] = !_isExpanded[index];
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: BorderDirectional(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 2),
                        child: ListTile(
                          title: Text(
                            _itemTexts[index],
                            style: TextStyle(
                              fontSize: textSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[800],
                            ),
                          ),
                          trailing: Image.asset(
                            _isExpanded[index]
                                ? 'assets/dropdown.png'
                                : 'assets/dropup.png',
                            width: textSize * 1,
                          ),
                        ),
                      ),
                    ),
                    if (_isExpanded[index]) _customWidgets[index],
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
