import 'package:flutter/material.dart';
import 'dropdown.dart';

class cavity_page extends StatefulWidget {
  @override
  State<cavity_page> createState() => _CavityPageState();
}

class _CavityPageState extends State<cavity_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [DropdownEnhanced()]),
    );
  }
}
