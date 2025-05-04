import 'package:flutter/material.dart';

class ChallengesContainer extends StatelessWidget {
  const ChallengesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 375,
        height: 100,
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 4,
            ),
            Image.asset("assets/Icons/Chilling.png"),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Complete 1000 words streak",
                  style: TextStyle(fontSize: 18),
                ),
                Text("Win 1000XP along with 300 diamonds.")
              ],
            )
          ],
        ),
      ),
    );
  }
}
