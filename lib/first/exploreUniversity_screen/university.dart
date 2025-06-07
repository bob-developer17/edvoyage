import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';

class uni extends StatelessWidget {
  const uni({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Measurements(MediaQuery.of(context).size);
    return Padding(
      padding: EdgeInsets.only(
        left: size.wp(2),
        right: size.wp(2),
        top: size.hp(1),
      ),
      child: Card(
        color: White,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(size.wp(4)),
        ),
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.all(size.wp(2.5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images.jpg',
                        height: size.hp(8),
                        width: size.hp(8),
                      ),
                    ],
                  ),
                  SizedBox(width: size.wp(3)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Siberian Medical University',
                        style: TextStyle(
                          fontSize: size.wp(4),
                          fontFamily: 'Roboto',
                          color: Cprimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      vGap(size.hp(0.1)),
                      Text(
                        'Tomsk, Russia',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: size.wp(3),
                          color: grey3,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      vGap(size.hp(1.5)),
                      Row(
                        children: [
                          Text(
                            "ESTD : ",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: size.wp(3),
                              color: grey3,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '1888',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: size.wp(3),
                              color: grey3,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      vGap(size.hp(0.3)),
                      Row(
                        children: [
                          Text(
                            "DV Rank",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: size.wp(3),
                              color: grey3,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: size.wp(1)),
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: size.wp(4),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    type: MaterialType.transparency,
                    child: Ink(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white, width: size.wp(0.7)),
                        color: Colors.green,
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(1000.0),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.all(size.wp(2)),
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: size.wp(5),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.hp(0.5)),
                  Container(
                    height: size.hp(4),
                    width: size.wp(13),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(size.wp(2)),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'View',
                        style: TextStyle(
                          fontSize: size.wp(2.1),
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
