import 'package:flutter/material.dart';

class SlotBookedWidget extends StatelessWidget {
  const SlotBookedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/slot_booked.png',
            width: 300,
            height: 300,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
          const Text(
            'Slot Booked',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00695C),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Congrats! Your meeting with our counsellor has been reserved on\n15th Jul, 02:30 PM. Please join the meeting through the link sent to your mail.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF4A4A4A),
              height: 1.5,
            ),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFFF6B6B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 16),
            ),
            child: const Text(
              'Back',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
