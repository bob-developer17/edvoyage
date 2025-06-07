import 'dart:convert';
import 'dart:math';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import '../../_env/env.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import 'university.dart';

class ExploreUniversitiesScreen extends StatefulWidget {
  @override
  _ExploreCoursesState createState() => _ExploreCoursesState();
  final GlobalKey<_ExploreCoursesState> ExploreCoursesKey =
      GlobalKey<_ExploreCoursesState>();
}

class _ExploreCoursesState extends State<ExploreUniversitiesScreen> {
  @override
  Measurements? size;

  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);
    return SafeArea(
      child: Scaffold(
        backgroundColor: color3,
        appBar: AppBar(
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(150.0),
              bottomRight:
                  Radius.circular(150.0), // Adjust the border radius as needed
            ),
          ),
          toolbarHeight: 70.0,
          primary: false,
          backgroundColor: Colors.white,
          title: Container(
            height: 30,
            child: TextFormField(
              onFieldSubmitted: (query) {},
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                isDense: true,
                contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                hintText: "Search University",
                hintStyle: TextStyle(fontFamily: 'Poppins', color: textColor),
                prefixIcon: Icon(Icons.search, color: iconcolor, size: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: grey2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: Colors.black12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                  borderSide: BorderSide(color: grey2),
                ),
              ),
            ),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Cprimary,
              ),
            ),
          ),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/filter.png"),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
            padding: EdgeInsets.all(2),
            child: Column(
              children: [
                Uni(
                  universityName: 'Siberian Medical University',
                  location: 'Tomsk, Russia',
                  imagePath: 'assets/images.jpg',
                  estdYear: '1888',
                  rating: 4.0,
                  onBookmarkTap: () {
                    // Bookmark tapped action
                  },
                  onViewPressed: () {
                    // View button tapped action
                  },
                ),
                Uni(
                  universityName: 'Siberian Medical University',
                  location: 'Tomsk, Russia',
                  imagePath: 'assets/images.jpg',
                  estdYear: '1888',
                  rating: 4.0,
                  onBookmarkTap: () {
                    // Bookmark tapped action
                  },
                  onViewPressed: () {
                    // View button tapped action
                  },
                ),
                Uni(
                  universityName: 'hghghghgh Medical University',
                  location: 'Tomsk, Russia',
                  imagePath: 'assets/images.jpg',
                  estdYear: '1888',
                  rating: 4.0,
                  onBookmarkTap: () {
                    // Bookmark tapped action
                  },
                  onViewPressed: () {
                    // View button tapped action
                  },
                ),
                Uni(
                  universityName: 'Siberian Medical University',
                  location: 'Tomsk, Russia',
                  imagePath: 'assets/images.jpg',
                  estdYear: '1888',
                  rating: 4.0,
                  onBookmarkTap: () {
                    // Bookmark tapped action
                  },
                  onViewPressed: () {
                    // View button tapped action
                  },
                ),
                Uni(
                  universityName: 'Siberian Medical University',
                  location: 'Tomsk, Russia',
                  imagePath: 'assets/images.jpg',
                  estdYear: '1888',
                  rating: 4.0,
                  onBookmarkTap: () {
                    // Bookmark tapped action
                  },
                  onViewPressed: () {
                    // View button tapped action
                  },
                ),
              ],
            )),
      ),
    );
  }
}
