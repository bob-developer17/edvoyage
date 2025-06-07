import 'package:flutter/material.dart';

class Swiper extends StatefulWidget {
  final String text;

  const Swiper({Key? key, required this.text}) : super(key: key);

  @override
  _CenteredTextWithButtonsState createState() =>
      _CenteredTextWithButtonsState();
}

class _CenteredTextWithButtonsState extends State<Swiper> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double fontsizeone = screenHeight * 0.02;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                  horizontal: screenWidth * 0.03,
                ),
              ),
              child: Text(
                'Left',
                style: TextStyle(color: Colors.white, fontSize: fontsizeone),
              ),
            ),
          ),
          SizedBox(width: screenWidth * 0.02),
          Text(
            widget.text,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: 'Roboto',
              color: Colors.black,
            ),
          ),
          SizedBox(width: screenWidth * 0.02),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(
                  vertical: screenHeight * 0.02,
                  horizontal: screenWidth * 0.03,
                ),
              ),
              child: Text(
                'Right',
                style: TextStyle(color: Colors.white, fontSize: fontsizeone),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
