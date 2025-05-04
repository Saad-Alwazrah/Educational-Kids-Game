import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
   const ProgressBar({super.key, required this.progress});
  final double progress;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        LinearProgressIndicator(
          value: progress,
          minHeight: 10,
          backgroundColor: Colors.grey,
          color: const Color.fromARGB(255, 236, 192, 85),
          borderRadius: BorderRadius.circular(15),
        ),
        Positioned(
            bottom: -1,
            child: Container(
                color: const Color.fromARGB(245, 229, 229, 229),
                child: Image.asset(
                  "assets/Icons/crown.png",
                  scale: 1.5,
                )))
      ],
    );
  }
}
