import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../first/homeScreen.dart';
import '../../second/CavityScreen/main.dart';
import '../../second/Overseas/main.dart';
import '../../second/Profile/main.dart';
import '../../second/TeachContent/main.dart';
import '../../widgets/drawer_menu_page.dart';
import '../colors/colors.dart';
import 'controller.dart';

BottomNavigationController controller = Get.put(BottomNavigationController());

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final TextEditingController nameController = TextEditingController();
  final List<Widget> _children = [
    profilescreen(),
    cavity_page(),
    HomeScreen(),
    TeachContent(
      [
        'Video', '23 Topics', '200 Videos',
        // a Navigation to the video screen
      ],
      ['MCQ', '23 Topics', '200 Videos'],
      ['Clinical Case', '23 Topics', '200 Videos'],
      ['Flash Card', '23 Topics', '200 Videos'],
      ['Q-Bank', '23 Topics', '200 Videos'],
    ),
    OverseasMain(),
  ];

  int selectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final labelTextStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontFamily: 'Roboto', fontSize: screenWidth * 0.02);

    return Obx(() {
      int index = controller.tabIndex.toInt();
      return ZoomDrawer(
        menuBackgroundColor: Colors.white,
        borderRadius: screenWidth * 0.06,
        showShadow: true,
        angle: 0.0,
        boxShadow: [BoxShadow(blurRadius: screenWidth * 0.01)],
        drawerShadowsBackgroundColor: const Color.fromARGB(255, 210, 15, 15),
        slideWidth: screenWidth * 0.69,
        duration: .5.seconds,
        reverseDuration: .5.seconds,
        menuScreen: const MenuPage(),
        mainScreen: Scaffold(
          body: _children[selectedIndex],
          bottomNavigationBar: SizedBox(
            height: screenHeight * 0.07,
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
                  icon: ImageIcon(AssetImage("assets/frame.png"),
                      size: screenWidth * 0.06),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/diamonds.png"),
                      size: screenWidth * 0.06),
                  label: 'SEARCH',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/Group 98.png"),
                      size: screenWidth * 0.06),
                  label: 'CART',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/book.png"),
                      size: screenWidth * 0.06),
                  label: 'ACCOUNT',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/airplane.png"),
                      size: screenWidth * 0.06),
                  label: 'AIRPLANE',
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Future<bool> onexit() async {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return await showDialog(
      barrierDismissible: false,
      context: Get.context!,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.all(Radius.circular(screenWidth * 0.02))),
          child: Container(
            margin: EdgeInsets.only(
                top: screenHeight * 0.03,
                left: screenWidth * 0.04,
                right: screenWidth * 0.04),
            height: screenHeight * 0.15,
            child: Column(
              children: <Widget>[
                const Text("Are you sure you want to exit?"),
                Container(
                  margin: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      _dialogButton("No", () => Get.back(result: false),
                          screenWidth, screenHeight),
                      _dialogButton("Yes", () {
                        SystemChannels.platform
                            .invokeMethod('SystemNavigator.pop');
                      }, screenWidth, screenHeight),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _dialogButton(String text, VoidCallback onTap, double screenWidth,
      double screenHeight) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: screenWidth * 0.25,
        height: screenHeight * 0.06,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.blue.withOpacity(0.1),
                offset: const Offset(0.0, 1.0),
                blurRadius: 1.0,
                spreadRadius: 0.0)
          ],
          color: ColorConst.buttonColor,
          borderRadius: BorderRadius.circular(screenWidth * 0.02),
        ),
        child: Text(text,
            style: TextStyle(fontFamily: 'Roboto', color: Colors.white)),
      ),
    );
  }
}
