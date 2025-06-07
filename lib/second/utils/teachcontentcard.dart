import 'package:flutter/material.dart';

class ResponsiveCardWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String doctor;
  final String lockIcon;

  const ResponsiveCardWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.lockIcon,
    this.doctor = 'Dr.Ranchodas Chanchad,MD Anatomy',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final fontSize1 = screenWidth * 0.045;
    final fontSize2 = screenWidth * 0.03;
    final fontsize3 = screenWidth * 0.03;
    final iconsize = screenWidth * 0.1;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Image.asset(
              imageUrl,
              width: screenWidth * 0.15,
              height: screenWidth * 0.15,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: screenWidth * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  doctor,
                  style: TextStyle(
                    fontSize: fontSize2,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time,
                        size: fontsize3, color: Colors.grey[400]),
                    const SizedBox(width: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                          fontSize: fontsize3, color: Colors.grey[400]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                lockIcon,
                color: Colors.teal,
                width: iconsize,
                height: iconsize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
