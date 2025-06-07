import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../_env/env.dart';

class GalleryTab extends StatefulWidget {
  const GalleryTab({Key? key}) : super(key: key);

  @override
  _GalleryTabState createState() => _GalleryTabState();
}

class _GalleryTabState extends State<GalleryTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cblack10,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: White, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "University Entrance",
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Cprimary),
                        ),
                        Divider(
                          thickness: 1,
                          color: text5,
                        ),
                        Container(
                          height: getHeight(context) / 5.6,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Ashland_University_Entrance.jpg/1599px-Ashland_University_Entrance.jpg?20170803195644',
                                  width: 130,
                                  height: 130,
                                  fit: BoxFit.cover,
                                ),
                                Image.network(
                                  'https://astroffconsultants.com/wp-content/uploads/2018/01/University-Entrance-Requirements-Becoming-More-Holistic.jpg',
                                  width: 130,
                                  height: 130,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                        vGap(20),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: White,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lectures Rooms",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Cprimary),
                              ),
                              Divider(
                                thickness: 1,
                                color: text5,
                              ),
                              Container(
                                height: getHeight(context) / 5.6,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://sound-zero.com/wp-content/uploads/2020/12/product-school-Lo2SauLBP7g-unsplash-1536x1024.jpg',
                                        width: 130,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.network(
                                        'https://sound-zero.com/wp-content/uploads/2020/12/miguel-henriques-8atMWER8bI-unsplash-1536x1024.jpg',
                                        width: 130,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        vGap(20),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: White,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Laboratory",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Cprimary),
                              ),
                              Divider(
                                thickness: 1,
                                color: text5,
                              ),
                              Container(
                                height: getHeight(context) / 5.6,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.network(
                                        'https://d2jx2rerrg6sh3.cloudfront.net/image-handler/ts/20220131080401/ri/1000/src/images/Article_Images/ImageForArticle_22064_16436342404173431.jpg',
                                        width: 130,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                      Image.network(
                                        'https://d2jx2rerrg6sh3.cloudfront.net/image-handler/ts/20220131083012/ri/673/picture/2022/1/shutterstock_1555866449.jpg',
                                        width: 130,
                                        height: 130,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        vGap(20),
                        Center(
                          child: Text(
                            "--------- De voyage --------",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: grey2),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
