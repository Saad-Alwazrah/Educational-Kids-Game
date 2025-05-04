import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InviteFriendContainer extends StatelessWidget {
  const InviteFriendContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            border: Border.all(width: 3, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/Icons/Dayflow Black Cat.png"),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invite your friends",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      """Tell your friends it's
free and fun to learn
on Mental up!""",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(12)),
                  child: Center(child: Text("INVITE FRIENDS", style: TextStyle(color: Colors.white, fontSize: 20 ,fontWeight: FontWeight.bold),)),
            )
          ],
        ),
      ),
    );
  }
}
