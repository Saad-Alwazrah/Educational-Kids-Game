import 'package:flutter/material.dart';

class AchievementsContainer extends StatelessWidget {
  const AchievementsContainer({super.key, required this.achievementImage});

  final String achievementImage;

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
            
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 4, bottom: 4),
              child: Image.asset(achievementImage, scale: 1.5,),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Lorem Ipsumn",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                    """is simply dummy text of the prining 
and typesetting industry.""", style: TextStyle(fontSize: 16),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
