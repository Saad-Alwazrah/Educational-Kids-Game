import 'package:flutter/material.dart';

class GameLevel extends StatelessWidget {
  const GameLevel({super.key, required this.levelImage});
  final String levelImage;

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
          child: Image.asset(levelImage),
        ),
      ),
      Positioned(
          right: -2,
          bottom: 24,
          child: Image.asset(
            "assets/Icons/crown.png",
            scale: 1.2,
          )),
          const Positioned(
        right: 6,
        bottom: 24,
        child: Text("1")),
    ]);
  }
}
