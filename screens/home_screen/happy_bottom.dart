import 'package:flutter/material.dart';
import 'package:frontend/second/CavityScreen/cavity.dart';
import 'package:frontend/second/Profile/main.dart';
import 'package:get/get.dart';
import '../../utils/BottomNavigation/bottom_navigation.dart';
import '../../utils/colors/colors.dart';
import 'happy_mood.dart';

class HappyBottom extends StatefulWidget {
  const HappyBottom({Key? key}) : super(key: key);

  @override
  State<HappyBottom> createState() => _HappyBottomState();
}

class _HappyBottomState extends State<HappyBottom> {
  final List<Widget> _children = [
    profilescreen(),
    Cavity_screen(),
    Happy(),
    Happy(),
  ];

  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
          fontFamily: 'Roboto',
          fontSize: screenWidth * 0.02, // Responsive font size
        );

    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: _children[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: screenHeight * 0.1, // Responsive height
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: secondaryColor,
          unselectedItemColor: primaryColor,
          currentIndex: selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedLabelStyle: labelTextStyle,
          unselectedLabelStyle: labelTextStyle,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                width: screenWidth * 0.08, // Responsive icon size
                height: screenWidth * 0.08,
                child: const ImageIcon(AssetImage("assets/frame.png")),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: screenWidth * 0.08,
                height: screenWidth * 0.08,
                child: const ImageIcon(AssetImage("assets/diamonds.png")),
              ),
              label: 'SEARCH',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: screenWidth * 0.08,
                height: screenWidth * 0.08,
                child: const ImageIcon(AssetImage("assets/Group 98.png")),
              ),
              label: 'CART',
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                width: screenWidth * 0.08,
                height: screenWidth * 0.08,
                child: const ImageIcon(AssetImage("assets/book.png")),
              ),
              label: 'ACCOUNT',
            ),
          ],
        ),
      ),
    );
  }
}
