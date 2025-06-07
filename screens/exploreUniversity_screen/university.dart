import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../utils/colors/colors.dart';
import '../../utils/responsive.dart';

class Uni extends StatelessWidget {
  final String universityName;
  final String location;
  final String imagePath;
  final String estdYear;
  final double rating;
  final VoidCallback? onBookmarkTap;
  final VoidCallback? onViewPressed;

  const Uni({
    super.key,
    required this.universityName,
    required this.location,
    required this.imagePath,
    required this.estdYear,
    this.rating = 0,
    this.onBookmarkTap,
    this.onViewPressed,
  });

  @override
  Widget build(BuildContext context) {
    var size = Measurements(MediaQuery.of(context).size);

    // Clamp icon size for minimum tap target size
    double bookmarkIconSize = size.wp(5).clamp(24.0, 48.0);
    double ratingItemSize = size.wp(4).clamp(16.0, 32.0);

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
              Flexible(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(size.wp(2)),
                      child: Image.asset(
                        imagePath,
                        height: size.hp(8),
                        width: size.hp(8),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: size.wp(3)),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            universityName,
                            style: TextStyle(
                              fontSize: size.wp(4),
                              fontFamily: 'Roboto',
                              color: Cprimary,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          vGap(size.hp(0.1)),
                          Text(
                            location,
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: size.wp(3),
                              color: grey3,
                              fontWeight: FontWeight.w600,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
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
                              Flexible(
                                child: Text(
                                  estdYear,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: size.wp(3),
                                    color: grey3,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
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
                                initialRating: rating,
                                minRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: ratingItemSize,
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
                    ),
                  ],
                ),
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
                        onTap: onBookmarkTap,
                        child: Padding(
                          padding: EdgeInsets.all(size.wp(2)),
                          child: Icon(
                            Icons.bookmark_add_outlined,
                            size: bookmarkIconSize,
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
                      onPressed: onViewPressed,
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
