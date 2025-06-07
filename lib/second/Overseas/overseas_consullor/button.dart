import 'package:flutter/material.dart';

class ConfirmSlotButton extends StatelessWidget {
  const ConfirmSlotButton({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonWidth =
        MediaQuery.of(context).size.width * 0.5; // 50% of screen width

    return SizedBox(
      width: buttonWidth,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red, // 🔴 Red Background
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: const Text(
          "Confirm Slot",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
