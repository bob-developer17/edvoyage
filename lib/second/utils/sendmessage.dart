import 'package:flutter/material.dart';

class SentMessageWidget extends StatelessWidget {
  final String message;
  final bool isRead;

  const SentMessageWidget({
    required this.message,
    required this.isRead,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(message, style: const TextStyle(color: Colors.white)),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "2:00 PM",
                  style: TextStyle(color: Colors.grey[300], fontSize: 12),
                ),
                const SizedBox(width: 4),
                Icon(
                  Icons.done_all,
                  color: isRead ? Colors.blue : Colors.grey,
                  size: 16,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
