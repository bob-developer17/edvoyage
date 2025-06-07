import 'package:flutter/material.dart';

class DirectoryTitle extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;

  const DirectoryTitle({
    Key? key,
    required this.text1,
    required this.text2,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 10), // Add spacing
          Image.asset(
            'assets/book.png', // Replace with your image path
            width: 25,
            height: 25,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10), // Add spacing

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var text in [text1, text2, text3])
                if (text != 'None')
                  Text(
                    '/ $text',
                    style: const TextStyle(
                      color: Color.fromRGBO(3, 126, 115, 1),
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
