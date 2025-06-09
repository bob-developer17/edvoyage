import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import '../../_env/env.dart';
import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/long_button.dart';
import 'loginwithgoogle.dart';
import 'ordivider.dart';
import 'otp.dart';
import 'privacy_policy.dart';
import 'terms_n_condition.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _SignUpState();
}

class _SignUpState extends State<ForgotPassword> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Measurements size = Measurements(MediaQuery.of(context).size);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: thirdColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: primaryColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
                      height: size.hp(25),
                      width: size.wp(70),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: size.hp(2)),
                  Text(
                    'Forgot',
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
                  Text(
                    'Password?',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: primaryColor,
                      fontSize: size.hp(4),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Don’t worry it happens. Please enter the address associated with your account.',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade700,
                      fontSize: size.hp(2.3),
                    ),
                  ),
                  SizedBox(height: size.hp(2)),
                  Column(
                    children: [
                      SizedBox(
                        width: size.wp(90),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined,
                                color: primaryColor, size: size.hp(2)),
                            labelText: 'Email ID / Mobile Number',
                            labelStyle: TextStyle(
                                fontSize: size.hp(2.8),
                                color: grey2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.hp(2)),
                  Center(
                    child: LongButton(
                      text: 'Continue',
                      action: () async {},
                    ),
                  ),
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
