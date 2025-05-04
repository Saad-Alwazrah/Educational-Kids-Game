import 'package:edcuational_kids_game/Widgets/Challenges/achievements_container.dart';
import 'package:edcuational_kids_game/Widgets/Challenges/challnges_container.dart';
import 'package:flutter/material.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _ChallengesScreenState();
}

class _ChallengesScreenState extends State<ChallengesScreen> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 30),
          child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 60,
              color: const Color.fromARGB(245, 229, 229, 229),
              child: const Center(
                child: Text(
                  "Challenges",
                  style: TextStyle(fontSize: 25),
                ),
              )),
        ),
      ),
      body: ListView(
        children: const [
          ChallengesContainer(),
          Text(
            "   Achievements",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          AchievementsContainer(
            achievementImage: "assets/Icons/paint.png",
          ),
          AchievementsContainer(
            achievementImage: "assets/Icons/cactus.png",
          ),
          AchievementsContainer(
            achievementImage: "assets/Icons/basketball.png",
          ),
        ],
      ),
    );
  }
}
