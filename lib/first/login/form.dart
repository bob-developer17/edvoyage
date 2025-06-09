import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/utils/colors/colors.dart';

class ResponsiveFormPage extends StatefulWidget {
  final TextEditingController mobileController;
  final TextEditingController emailController;

  const ResponsiveFormPage(
      {Key? key, required this.mobileController, required this.emailController})
      : super(key: key);
  @override
  State<ResponsiveFormPage> createState() => _ResponsiveFormPageState();
}

class _ResponsiveFormPageState extends State<ResponsiveFormPage> {
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
                  child: TextFormField(
                    initialValue: "jjjjjjjjjj",
                    // controller: widget.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter Email ID',
                      hintStyle: TextStyle(
                          fontSize: size.width * 0.05, color: Colors.black12),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    style:
                        TextStyle(fontSize: size.width * 0.055, color: grey2),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Email ID';
                      } else if (value.length < 10) {
                        return 'Enter valid Email ID';
                      }
                      return null;
                    },
                  ),
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
                  child: TextFormField(
                    initialValue: "9999999999",
                    // controller: widget.mobileController,
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      hintText: 'Enter mobile number',
                      hintStyle: TextStyle(
                          fontSize: size.width * 0.05, color: Colors.black12),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    style:
                        TextStyle(fontSize: size.width * 0.055, color: grey2),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter mobile number';
                      } else if (value.length < 10) {
                        return 'Enter valid number';
                      }
                      return null;
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
