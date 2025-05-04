import 'package:edcuational_kids_game/Screens/levels_screen.dart';
import 'package:edcuational_kids_game/Widgets/progress_bar.dart';
import 'package:flutter/material.dart';

class GameCardImage extends StatelessWidget {
  const GameCardImage(
      {super.key, required this.unitNum, required this.progress});

  final String unitNum;
  final double progress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const LevelsScreen()));
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(102, 196, 196, 196)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                unitNum,
                style: const TextStyle(fontSize: 25),
              ),
              ProgressBar(progress: progress)
            ],
          ),
        ),
      ),
    );
  }
}
