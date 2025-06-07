import 'package:flutter/material.dart';
import 'package:frontend/second/CavityScreen/chat_individual/main.dart';

class SearchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SearchList()),
    );
  }
}

class SearchList extends StatefulWidget {
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  TextEditingController _searchController = TextEditingController();

  final List<Map<String, String>> students = [
    {
      'name': 'Alice Adams',
      'title': 'Student',
      'university': 'University A',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Brian Brown',
      'title': 'Student',
      'university': 'University C',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'Chris Carter',
      'title': 'Student',
      'university': 'University A',
      'imageUrl': 'https://via.placeholder.com/150',
    },
    {
      'name': 'David Douglas',
      'title': 'Student',
      'university': 'University C',
      'imageUrl': 'https://via.placeholder.com/150',
    },
  ];

  List<Map<String, String>> filteredStudents = [];

  @override
  void initState() {
    super.initState();
    filteredStudents = students;
  }

  void filterSearch(String query) {
    setState(() {
      filteredStudents = students
          .where(
            (student) => student['name']!.toLowerCase().startsWith(
                  query.toLowerCase(),
                ),
          )
          .toList();
    });
  }

  // another function to clear the search
  void clearSearch() {
    print('clear');
    setState(() {
      _searchController.clear();
      filteredStudents = students;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 290,
                child: TextField(
                  controller: _searchController,
                  onChanged: (value) => filterSearch(value),
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Search Students...",
                    hintStyle: TextStyle(color: Colors.black, fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        40,
                      ), // Rounded corners
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Image.asset(
                        'assets/search.png', // Change this to your asset image
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: clearSearch,
                child: Image.asset('assets/clear.png', width: 20, height: 20),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: filteredStudents.length,
              itemBuilder: (context, index) {
                return SearchCard(
                  imageUrl: filteredStudents[index]['imageUrl']!,
                  name: filteredStudents[index]['name']!,
                  title: filteredStudents[index]['title']!,
                  university: filteredStudents[index]['university']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String title;
  final String university;

  const SearchCard({
    required this.imageUrl,
    required this.name,
    required this.title,
    required this.university,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // navigate to ChatIndividual()
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatIndividual()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(imageUrl)),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      university,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  "assets/add.png",
                  width: 50,
                  height: 50,
                  alignment: Alignment.centerRight,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
