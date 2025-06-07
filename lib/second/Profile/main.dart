import 'package:flutter/material.dart';
import 'package:frontend/second/utils/minicustomappbar.dart';
import 'button.dart';
import 'form.dart';
import 'image.dart';

class profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomMiniAppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: screenSize.height * 0.8,
          width: screenSize.width,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CustomRedSquare()],
              ),
              SizedBox(height: 20),
              Divider(
                color: const Color.fromARGB(255, 234, 230, 230),
                thickness: 2,
              ),
              SizedBox(height: 20),
              ContactForm(),
              SizedBox(height: 20),
              Divider(
                color: const Color.fromARGB(255, 230, 225, 225),
                thickness: 2,
              ),
              CustomButtonWidget(buttonText: 'Verify profile'),
              CustomButtonWidget(buttonText: 'Reset Questions'),
            ],
          ),
        ),
      ),
    );
  }
}
