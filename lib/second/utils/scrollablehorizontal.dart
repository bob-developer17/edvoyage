import 'package:flutter/material.dart';

class InfiniteScrollableWidget extends StatefulWidget {
  @override
  _InfiniteScrollableWidgetState createState() =>
      _InfiniteScrollableWidgetState();
}

class _InfiniteScrollableWidgetState extends State<InfiniteScrollableWidget> {
  final List<String> countries = [
    "Russia",
    "Georgia",
    "Armenia",
    "USA",
    "Canada",
    "UK",
    "France",
    "Germany",
    "Italy",
    "Spain",
    "China",
    "India",
    "Australia",
    "Brazil",
    "Japan",
    "South Korea",
    "Mexico",
    "Egypt",
    "Norway",
    "Sweden",
    "Finland",
    "Denmark",
    "Switzerland",
    "Netherlands",
  ];

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 5, right: 20),
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children:
                countries
                    .map(
                      (country) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedCountry = country;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          decoration: BoxDecoration(
                            color:
                                selectedCountry == country
                                    ? Colors.teal
                                    : Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            country,
                            style: TextStyle(
                              color:
                                  selectedCountry == country
                                      ? Colors.white
                                      : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
