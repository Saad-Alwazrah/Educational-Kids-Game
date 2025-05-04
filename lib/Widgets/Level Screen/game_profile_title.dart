import 'package:flutter/material.dart';

class GameProfileTitle extends StatelessWidget {
  const GameProfileTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            width: 200,
            height: 120,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 233, 232, 232),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 3, color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -60,
                    right: 25,
                    child: Image.asset(
                      "assets/Icons/Beep Beep Horse.png",
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "\nUnit 1",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 80,
                      child: LinearProgressIndicator(
                        value: 0.25,
                        minHeight: 12,
                        backgroundColor: Colors.grey.shade400,
                        color: const Color.fromARGB(255, 236, 192, 85),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 40,
                      child: Container(
                          color: const Color.fromARGB(245, 229, 229, 229),
                          child: Container(
                            color: Colors.grey.shade300,
                            child: Image.asset(
                              "assets/Icons/crown.png",
                              scale: 1.5,
                            ),
                          ))),
                  Positioned(
                    bottom: -3,
                    right: 10,
                      child: Text(
                    "3/40",
                    style: TextStyle(color: Colors.grey),
                  ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
