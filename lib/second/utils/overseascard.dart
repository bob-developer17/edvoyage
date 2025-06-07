import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'colors.dart';

class OverseasCard extends StatefulWidget {
  final String imageUrl;
  final String universityName;
  final String location;
  final List<String> detailsValues;

  const OverseasCard({
    Key? key,
    required this.imageUrl,
    required this.universityName,
    required this.location,
    required this.detailsValues,
  }) : super(key: key);

  @override
  State<OverseasCard> createState() => _OverseasCardState();
}

class _OverseasCardState extends State<OverseasCard> {
  var shortlistbuttontapped = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double parentWidth = constraints.maxWidth;
        // We should avoid using constraints.maxHeight directly here
        // as it will be infinity when inside a Column in a SingleChildScrollView.

        var detailsLabels = [
          'World Rank',
          'Course Duration',
          'Tuition Fee',
          'University Type'
        ];

        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              // Use parentWidth for horizontal padding
              horizontal: parentWidth * 0.05,
              vertical: parentWidth * 0.02,
            ),
            child: Container(
              padding: EdgeInsets.all(parentWidth * 0.04),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey[300]!, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      // Use parentWidth for bottom padding
                      bottom: parentWidth * 0.02,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: Image.asset(
                            widget.imageUrl,
                            width: parentWidth * 0.1,
                            height: parentWidth * 0.1,
                          ),
                        ),
                        SizedBox(width: parentWidth * 0.04),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.universityName,
                                style: TextStyle(
                                  fontSize: parentWidth * 0.04,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.location,
                                style: TextStyle(
                                  fontSize: parentWidth * 0.025,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    // Use parentWidth for vertical spacing
                    height: parentWidth * 0.03,
                  ),
                  Container(
                    width: parentWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(detailsLabels.length, (index) {
                        return SizedBox(
                          width: parentWidth * 0.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                detailsLabels[index],
                                style: TextStyle(
                                  fontSize: parentWidth * 0.025,
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(
                                // Use parentWidth for small vertical space
                                height: parentWidth * 0.008,
                              ),
                              Text(
                                widget.detailsValues[index],
                                style: TextStyle(
                                  fontSize: parentWidth * 0.028,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    // Use parentWidth for space before button
                    height: parentWidth * 0.04,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Toggle the button state
                        setState(() {
                          shortlistbuttontapped = !shortlistbuttontapped;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: shortlistbuttontapped
                            ? Colors.white
                            : secondaryColor,
                        padding: EdgeInsets.symmetric(
                          vertical: parentWidth * 0.03,
                          horizontal: parentWidth * 0.1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Colors.grey[400]!, width: 1),
                        ),
                      ),
                      child: Text(
                        'Shortlist',
                        style: TextStyle(
                          fontSize: parentWidth * 0.04,
                          fontWeight: FontWeight.bold,
                          color: shortlistbuttontapped
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
