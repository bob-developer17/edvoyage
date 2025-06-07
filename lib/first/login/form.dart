import 'package:flutter/material.dart';
import 'package:frontend/utils/colors/colors.dart';

class ResponsiveFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min, // Prevents unnecessary stretching
        children: [
          Row(
            children: [
              Container(
                width: size.width * 0.1,
                alignment: Alignment.center,
                child: Icon(Icons.alternate_email,
                    color: Colors.green, size: size.width * 0.07),
              ),
              Container(
                width: size.width * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Email ID",
                      style: TextStyle(
                          fontSize: size.width * 0.055, color: grey2)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: size.width * 0.1,
                alignment: Alignment.center,
                child: Icon(Icons.sentiment_very_satisfied_outlined,
                    color: Colors.green, size: size.width * 0.07),
              ),
              Container(
                width: size.width * 0.15,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: "Dr",
                    items: ["Dr", "St", "VR"].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            style: TextStyle(fontSize: size.width * 0.055)),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                  ),
                ),
              ),
              Container(
                width: size.width * 0.6,
                child: Text(
                  "John Doe",
                  style: TextStyle(color: grey2, fontSize: size.width * 0.055),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: size.width * 0.1,
                alignment: Alignment.center,
                child: Icon(Icons.phone_callback_outlined,
                    color: Colors.green, size: size.width * 0.07),
              ),
              Container(
                width: size.width * 0.7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Mobile",
                      style: TextStyle(
                        color: grey2,
                        fontSize: size.width * 0.055,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
