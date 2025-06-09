import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:frontend/second/utils/directorytitle.dart';
import 'package:http/http.dart' as http;
import '../../../Services/api_client.dart';
import '../MCQ/two.dart';
import '../notescard.dart';
import 'two.dart';

class TeachContentVideo extends StatefulWidget {
  const TeachContentVideo({
    super.key,
  });

  @override
  _TeachContentState createState() => _TeachContentState(); // Create state
}

class _TeachContentState extends State<TeachContentVideo> {
  double get screenHeight => MediaQuery.of(context).size.height;
  double get screenWidth => MediaQuery.of(context).size.width;
  // i need anotehr variable with 10% of the above screeenHeight
  double get screenHeight1 => screenHeight * 0.02;
  double get screenHeight2 => screenHeight * 0.06;
  double get screenHeight3 => screenHeight * 0.125;
  double get screenWidth1 => screenWidth * 0.05;
  double get screenWidth2 => screenWidth * 0.05;
  double get screenWidth3 => screenWidth * 0.67;
  double get fontsize1 => screenHeight * 0.023;
  double get fontsize2 => screenHeight * 0.018;
  Future<List<dynamic>> fetchVideoTopics() async {
    final List<String> api = apiservices();
    final String host = api[0];
    final String port = api[1];
    final Uri apiUrl = Uri.parse("http://$host:$port/api/video-topics/");

    print(apiUrl);

    try {
      final response = await http.get(apiUrl);

      if (response.statusCode == 200) {
        final Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> videoTopics = json['topics'];
        return videoTopics;
      } else {
        throw Exception('Failed to load video topics');
      }
    } catch (e) {
      print('Error fetching video topics: $e');
      return [];
    }
  }

  List<dynamic> videoTopics = [];

  @override
  void initState() {
    super.initState();
    fetchVideoTopics().then((data) {
      setState(() {
        videoTopics = data;
        print(videoTopics);
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
              DirectoryTitle(text1: 'Video', text2: 'None', text3: 'None'),
              for (var topic in videoTopics)
                _buildVideoCard(
                  topic['name'], // assuming 'name' is the title
                  topic['doctor'], // replace with actual topic if available
                  topic[
                      'video_count'], // replace with actual video info if available
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoCard(String title, String topic, String videos) {
    print(title);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: GestureDetector(
        onTap: () {
          // Handle tap
          if (title == 'Human Anatomy') {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TeachContentVideoTwo(
                  topicId: 1,
                ),
              ),
            );
          }
        },
        child: // Changed to GestureDetector
            NotesCard(title: title, topic: topic, video: videos),
      ),
    );
  }
}
