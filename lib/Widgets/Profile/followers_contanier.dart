import 'package:flutter/material.dart';

class FollowersContainer extends StatelessWidget {
  const FollowersContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Container(
        width: 400,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 3, color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "FOLLOWING",
                    style: TextStyle(
                        color: Colors.lightBlue, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "FOLLOWERS",
                    style: TextStyle(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  width: 180,
                  height: 3,
                  color: Colors.lightBlue,
                ),
                Container(
                  width: 177,
                  height: 3,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 171, 112, 223),
                    shape: BoxShape.circle),
                child: const Center(
                    child: Text(
                  "H",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              title: const Text("Hardi"),
              subtitle: const Text("4367 XP"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            Container(
              height: 3,
              width: 360,
              color: Colors.grey.shade300,
            ),
            ListTile(
              leading: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 223, 112, 112),
                    shape: BoxShape.circle),
                child: const Center(
                    child: Text(
                  "K",
                  style: TextStyle(color: Colors.white),
                )),
              ),
              title: const Text("Krishna"),
              subtitle: const Text("2334 XP"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
