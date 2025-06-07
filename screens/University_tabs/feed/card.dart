import 'package:flutter/material.dart';

import '../../../utils/colors/colors.dart';
import '../../../utils/responsive.dart';

class card extends StatelessWidget {
  const card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      color: whiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/logo_feed.png',
                  width: 50,
                  height: 50,
                ),
                hGap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'John Doe', // Sample user name
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        color: Cprimary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '2 days ago', // Sample date
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        color: Cprimary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: ttext2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vGap(5),
                Text(
                  'Heading text goes here', // Sample feed title
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: titlecolor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                vGap(5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adip iscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', // Sample feed description
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
