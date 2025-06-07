import 'package:flutter/material.dart';
import 'package:frontend/screens/home_screen/homeScreen.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../utils/colors/colors.dart';

class ExhaustedBottom extends StatefulWidget {
  const ExhaustedBottom({Key? key}) : super(key: key);

  @override
  State<ExhaustedBottom> createState() => _ExhaustedBottomState();
}

class _ExhaustedBottomState extends State<ExhaustedBottom> {
  // final List<Widget> _children = [
  //   profilescreen(),
  //   cavity_page(),
  //   HomeScreen(),
  //   NotesSection(),
  // ];

  final List<Widget> _children = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final labelTextStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontFamily: 'Roboto', fontSize: screenWidth * 0.02);

    return Obx(() {
      return Scaffold(
        backgroundColor: const Color(0xFFEFEFEF),
        body: _children[selectedIndex],
        bottomNavigationBar: SizedBox(
          height: screenHeight * 0.1,
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
                icon: ImageIcon(
                  AssetImage("assets/frame.png"),
                  size: screenWidth * 0.07,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/diamonds.png"),
                  size: screenWidth * 0.07,
                ),
                label: 'SEARCH',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/Group 98.png"),
                  size: screenWidth * 0.07,
                ),
                label: 'CART',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/book.png"),
                  size: screenWidth * 0.07,
                ),
                label: 'ACCOUNT',
              ),
            ],
          ),
        ),
      );
    });
  }
}
