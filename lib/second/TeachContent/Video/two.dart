import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:frontend/second/utils/directorytitle.dart';
import 'package:frontend/second/utils/teachcontentcard.dart';
import 'package:http/http.dart' as http;

import '../../../Services/api_client.dart';
import '../MCQ/three/main.dart';

class TeachContentVideoTwo extends StatefulWidget {
  final int topicId;

  const TeachContentVideoTwo({
    super.key,
    required this.topicId,
  });

  @override
  _TeachContentState createState() => _TeachContentState();
}

class _TeachContentState extends State<TeachContentVideoTwo> {
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;
  // i need anotehr variable with 10% of the above screeenHeight
  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.12;
  double get screenHeight3 => screenHeight * 0.125;
  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.7;
  double get screenWidth3 => screenWidth * 0.7;
  double get fontsize1 => screenHeight * 0.025;
  double get fontsize2 => screenHeight * 0.018;
  Future<List<dynamic>> fetchVideoContentsByTopic() async {
    final int topicId = widget.topicId;
    final List<String> api = apiservices();
    final String host = api[0];
    final String port = api[1];
    final Uri apiUrl =
        Uri.parse("http://$host:$port/api/video-topics/contents/");

    print("POST to: $apiUrl");

    try {
      final response = await http.post(
        apiUrl,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'topic_id': widget.topicId}),
      );
      if (response.statusCode == 200) {
        print(response.body);
        final json = jsonDecode(response.body);
        print(json['contents']);
        // just any return statement
        return json['contents'];
      } else {
        throw Exception('Failed to load video content');
      }
    } catch (e) {
      print('Error: $e');
      return [];
    }
  }

  List<dynamic> videoContents = [];
  @override
  void initState() {
    super.initState();
    fetchVideoContentsByTopic().then((data) {
      setState(() {
        videoContents = data;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            'assets/logo_profile.png',
            width: fontsize1 * 7,
          ),
          backgroundColor: Colors.white),
      backgroundColor: Colors.grey.shade300,
      // Use widget.text1
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              DirectoryTitle(
                  text1: 'Video', text2: 'Human Anatomy', text3: 'None'),
              for (var topic in videoContents)
                ResponsiveCardWidget(
                  imageUrl: topic['videocontentpic'],
                  title: topic['title'],
                  subtitle: topic["sub"],
                  status: topic["status"],
                  timer: topic["timer"],
                  video: topic["video_url"],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
