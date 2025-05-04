import 'package:flutter/material.dart';

class GameLevelLocked extends StatelessWidget {
  const GameLevelLocked({super.key,});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 8, color: Colors.grey.shade400)),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.cyan,
              border: Border.all(width: 4, color: Colors.white)),
          child: Image.asset("assets/Icons/lock.png", scale: 1.5,),
        ),
      ),
      Positioned(
          right: -2,
          bottom: 24,
          child: Image.asset(
            "assets/Icons/crown.png",
            scale: 1.2,
          )),
    ]);
  }
}
