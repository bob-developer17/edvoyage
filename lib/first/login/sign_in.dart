import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/first/login/forgot_password.dart';
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

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();

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
                    'Login',
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
                  Column(
                    children: [
                      SizedBox(
                        width: size.wp(90),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined,
                                color: primaryColor, size: size.hp(4)),
                            labelText: 'Email ID',
                            labelStyle: TextStyle(
                                fontSize: size.hp(2.1),
                                color: grey2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.wp(90),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            icon: Icon(Icons.lock_open,
                                color: primaryColor, size: size.hp(4)),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontSize: size.hp(2.1),
                                color: grey2,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: size.hp(1)),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: primaryColor,
                                fontSize: size.hp(2.1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.hp(4)),
                  SizedBox(height: size.hp(3)),
                  Center(
                    child: LongButton(
                      action: () => showCustomSnackbar(
                          context), // Pass function reference
                      text: 'Login',
                    ),
                  ),
                  SizedBox(height: size.hp(2)),
                  OrDivider(),
                  SizedBox(height: size.hp(2)),
                  GoogleAuthButton(),
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
              )), // Navigate to Otp screen
    );
  });
}
