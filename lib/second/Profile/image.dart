import 'package:flutter/material.dart';

final String imageUrl =
    'assets/profile.png'; // Replace with your dynamic image URL

class CustomRedSquare extends StatelessWidget {
  final String imageUrl = 'assets/profile.png';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CustomPaint(size: Size(160, 160), painter: DashedCirclePainter()),
        Container(
          width: 140,
          height: 140,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/profile.png',
              fit: BoxFit.cover,
              width: 140,
              height: 140,
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: CircleAvatar(
            backgroundColor: Colors.teal,
            radius: 20,
            child: Icon(Icons.edit, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke;

    const double dashWidth = 20;
    const double dashSpace = 5;
    double radius = size.width / 2 - 4;

    double circumference = 2 * 3.141592 * radius;
    double dashCount = circumference / (dashWidth + dashSpace);

    for (double i = 0; i < dashCount; i++) {
      double startAngle = (i * (dashWidth + dashSpace)) / radius;
      double sweepAngle = dashWidth / radius;

      canvas.drawArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: radius,
        ),
        startAngle,
        sweepAngle,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
