import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 3,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Colors.green), // Green back icon
            onPressed: () => Navigator.of(context).pop(),
          ),
          const Text(
            "Study Abroad",
            style: TextStyle(
                color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(60), // Extra height for the column
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Image.asset("assets/Subtract.png",
                  height: 30, width: 30), // Slot Icon
              const SizedBox(width: 10),
              const Text(
                "Slot booking with counsellor",
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
