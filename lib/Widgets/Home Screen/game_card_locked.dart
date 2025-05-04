import 'package:flutter/material.dart';

class GameCardLocked extends StatelessWidget {
  const GameCardLocked({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(102, 196, 196, 196)),
        child: Center(
          child: Image.asset("assets/Icons/lock.png"),
        ));
  }
}
