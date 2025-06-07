import 'package:flutter/material.dart';

import 'appbar.dart';
import 'widget.dart';

class cavity_result extends StatefulWidget {
  @override
  State<cavity_result> createState() => _cavity_resultState();
}

class _cavity_resultState extends State<cavity_result> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SearchApp();
  }
}
