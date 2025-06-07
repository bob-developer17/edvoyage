import 'dart:convert';
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';
import '../../_env/env.dart';
import 'package:http/http.dart' as http;

import 'feed/card.dart';

class FeedTab extends StatefulWidget {
  @override
  State<FeedTab> createState() => _FeedTabState();

  FeedTab({Key? key}) : super(key: key);
}

class _FeedTabState extends State<FeedTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            card(),
            SizedBox(
              height: size.height * 0.02,
            ),
            card(),
            SizedBox(
              height: size.height * 0.02,
            ),
            card(),
            SizedBox(
              height: size.height * 0.02,
            ),
            card(),
            SizedBox(
              height: size.height * 0.02,
            ),
            card(),
          ],
        ),
      ),
    );
  }
}
