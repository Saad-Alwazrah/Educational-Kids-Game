import 'package:flutter/material.dart';

class FriendsUpdate extends StatelessWidget {
  const FriendsUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        width: 350,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 2, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(20)),
        child: const Row(
          children: [
            SizedBox(width: 24),
            Text(
              "🎊",
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(width: 16),
            Text(
              "Friends updates",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(width: 94),
            Icon(Icons.arrow_forward_ios_rounded)
          ],
        ),
      ),
    );
  }
}
