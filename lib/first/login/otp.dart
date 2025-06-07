import 'package:flutter/material.dart';
import 'package:frontend/first/homeScreen.dart';
import 'package:frontend/utils/BottomNavigation/bottom_navigation.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../utils/avatar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';
import '../../widgets/back_arrow_button.dart';
import '../../widgets/long_button.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Otp extends StatefulWidget {
  Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  OtpFieldController otpController = OtpFieldController();
  String otps = "";

  Measurements? size;

  @override
  Widget build(BuildContext context) {
    size = Measurements(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size!.wp(5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: size!.hp(5)),
              const Align(
                alignment: Alignment.centerLeft,
                child: BackArrow(),
              ),
              SizedBox(height: size!.hp(3)),
              Image.asset(
                otp,
                height: size!.hp(30),
                width: size!.wp(60),
                fit: BoxFit.cover,
              ),
              SizedBox(height: size!.hp(2)),
              Text(
                'Enter OTP',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size!.hp(3),
                ),
              ),
              SizedBox(height: size!.hp(1)),
              Text(
                "A 6 digit code has been sent to your mobile number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.grey.shade700,
                  fontSize: size!.hp(3),
                ),
              ),
              SizedBox(height: size!.hp(3)),
              OTPTextField(
                controller: otpController,
                length: 6,
                width: size!.wp(83),
                textFieldAlignment: MainAxisAlignment.spaceBetween,
                fieldWidth: size!.wp(12),
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 10,
                style: TextStyle(fontSize: size!.hp(2.5)),
                onChanged: (value) {
                  otps = value;
                },
              ),
              SizedBox(height: size!.hp(4)),
              LongButton(
                action: () async {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavigation()),
                  );
                },
                text: 'Verify',
              ),
              SizedBox(height: size!.hp(2)),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> setMobileNumber(String mobilenumber) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('mobilenumber', mobilenumber);
  print("The mobile number saved is \$mobilenumber");
}
