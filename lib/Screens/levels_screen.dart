import 'package:edcuational_kids_game/Widgets/Level%20Screen/game_level.dart';
import 'package:edcuational_kids_game/Widgets/Level%20Screen/game_level_locked.dart';
import 'package:edcuational_kids_game/Widgets/Level%20Screen/game_profile_title.dart';
import 'package:flutter/material.dart';

class LevelsScreen extends StatelessWidget {
  const LevelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: Size(MediaQuery.sizeOf(context).width, 30),
            child: Container(
              height: 60,
              color: const Color.fromARGB(245, 229, 229, 229),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      )),
                  const Padding(
                    padding: EdgeInsets.only(left: 32),
                    child: Text(
                      "Verbal Skills  ",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset("assets/Icons/crown.png"),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          "3",
                          style: TextStyle(
                              color: Color.fromARGB(255, 236, 192, 85),
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Image.asset("assets/Icons/gem.png"),
                        const SizedBox(
                          width: 16,
                        ),
                        const Text(
                          "213",
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 161, 251),
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(children: const [
          SizedBox(height: 32),
          GameProfileTitle(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GameLevel(levelImage: "assets/Icons/Hands Pencil 1.png")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Intro",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GameLevel(levelImage: "assets/Icons/Hands Book.png"),
              SizedBox(
                width: 16,
              ),
              GameLevel(levelImage: "assets/Icons/Dayflow Bike.png")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Phrases",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                "Travel",
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [GameLevelLocked()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GameLevelLocked(),
              SizedBox(
                width: 16,
              ),
              GameLevelLocked()
            ],
          ),
        ]));
  }
}
