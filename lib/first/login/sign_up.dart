import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/Services/api_client.dart';
import 'package:http/http.dart' as http;
import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/long_button.dart';

import 'form.dart';
import 'otp.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _mobile = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> sendOtpToUser() async {
    print(_mobile.text.trim());
    final String host = apiservices()[0], port = apiservices()[1];
    final String apiUrl = "http://$host:$port/api/users/send-otp/";
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "mobile": "9999999999",
          "email": "a@gmail.com",
          // Add country code if needed e.g., "+91${_mobile.text.trim()}"
        }),
      );

      if (response.statusCode == 200) {
        showCustomSnackbar(context); // Show OTP sent message
      } else {
        final body = jsonDecode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(body['error'] ?? "Failed to send OTP"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Measurements size = Measurements(MediaQuery.of(context).size);

    return Scaffold(
      backgroundColor: thirdColor,
      body: SafeArea(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.wp(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.hp(2)),
                  Center(
                    child: Image.asset(
                      signup,
                      height: size.hp(35),
                      width: size.wp(75),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: size.hp(2)),
                  Text(
                    'Sign up',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: primaryColor,
                      fontSize: size.hp(4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: size.hp(0.4),
                    width: size.wp(8),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(height: size.hp(3)),
                  ResponsiveFormPage(
                    emailController: _email,
                    mobileController: _mobile,
                  ),
                  SizedBox(height: size.hp(3)),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: size.hp(2.3),
                        color: grey2,
                      ),
                      children: [
                        TextSpan(text: 'By signing up, you agree to our '),
                        TextSpan(
                          text: 'Terms & Conditions ',
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                        TextSpan(text: 'and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.hp(3)),
                  Center(
                    child: LongButton(
                      action: () => sendOtpToUser(),
                      text: 'Continue',
                    ),
                  ),
                  SizedBox(height: size.hp(4)),
                  Center(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return SignIn();
                        }),
                      );
                    },
                    child: Text(
                      'Already a Member? Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.hp(2.3),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void showCustomSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          Icon(Icons.check_circle, color: Colors.white, size: 24),
          SizedBox(width: 10),
          Text(
            'OTP sent successfully!',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
      backgroundColor: ColorConst.greenColor,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(16),
      elevation: 6,
      duration: Duration(seconds: 3),
    ),
  );
  Future.delayed(Duration(seconds: 3), () {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => Otp(
                mobile: '',
                userType: '',
              )),
    );
  });
}
