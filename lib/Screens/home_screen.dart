import 'package:edcuational_kids_game/Widgets/Home%20Screen/game_card_image.dart';
import 'package:edcuational_kids_game/Widgets/Home%20Screen/game_card_locked.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 30),
          child: Container(
            height: 60,
            color: const Color.fromARGB(245, 229, 229, 229),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Image.asset("assets/Icons/streak.png"),
                ),
                Image.asset("assets/Icons/treasure.png"),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Image.asset("assets/Icons/lifes.png"),
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Row(
            children: [
              SizedBox(height: 24),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Logical reasoning",
                      style: TextStyle(fontSize: 28),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/Icons/crown.png", scale: 1.5),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("18/40"),
                      ],
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GameCardImage(unitNum: "Unit 1", progress: .5),
                    GameCardLocked()
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Artistic thinking",
                      style: TextStyle(fontSize: 28),
                    ),
                    Row(
                      children: [
                        Image.asset("assets/Icons/crown.png", scale: 1.5),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("35/40"),
                      ],
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GameCardImage(unitNum: "Unit 1", progress: .83),
                    GameCardLocked()
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Verbal Skills",
                      style: TextStyle(fontSize: 28),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/Icons/crown.png",
                          scale: 1.4,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("3/40"),
                      ],
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GameCardImage(unitNum: "Unit 1", progress: .3),
                    GameCardLocked()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
