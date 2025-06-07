import 'package:flutter/material.dart';
import 'package:frontend/models/mcq.dart';

import 'package:frontend/second/CavityScreen/main.dart';
import 'package:frontend/second/Profile/main.dart';

import '../first/homeScreen.dart';
import '../utils/colors/colors.dart';

class BottomButton extends StatefulWidget {
  const BottomButton({
    Key? key,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  final Function()? onTap;
  final int selectedIndex;

  @override
  _BottomButtonState createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final labelTextStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontFamily: 'Roboto',
        fontSize: MediaQuery.of(context).size.width * 0.02);

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.08,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: secondaryColor,
        unselectedItemColor: primaryColor,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: labelTextStyle,
        unselectedLabelStyle: labelTextStyle,
        onTap: (index) {
          // Handle navigation for each index
          setState(() {
            _selectedIndex = index;
          });

          switch (_selectedIndex) {
            case 0:
              // Navigate to HomeScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profilescreen()),
              );
              break;
            case 1:
              // Navigate to ProfileScreen or any other screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cavity_page()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
              break;
          }

          widget.onTap?.call(); // Notify the parent widget about the change
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/frame.png"),
              size: MediaQuery.of(context).size.width * 0.07,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/diamonds.png"),
              size: MediaQuery.of(context).size.width * 0.07,
            ),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/Group 98.png"),
              size: MediaQuery.of(context).size.width * 0.07,
            ),
            label: 'CART',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/book.png"),
              size: MediaQuery.of(context).size.width * 0.07,
            ),
            label: 'BOOK',
          ),
        ],
      ),
    );
  }
}
