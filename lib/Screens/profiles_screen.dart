import 'package:edcuational_kids_game/Widgets/Profile/followers_contanier.dart';
import 'package:edcuational_kids_game/Widgets/Profile/friends_update.dart';
import 'package:edcuational_kids_game/Widgets/Profile/invite_friend_container.dart';
import 'package:edcuational_kids_game/Widgets/Profile/profile_head.dart';
import 'package:edcuational_kids_game/Widgets/Profile/statistics_container.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.sizeOf(context).width, 30),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 60,
            color: const Color.fromARGB(245, 229, 229, 229),
            child: const Center(
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const Row(
            children: [ProfileHead()],
          ),
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 2,
            color: Colors.grey.shade300,
          ),
          const FriendsUpdate(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              "Statistics",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatisticsContainer(
                    title: "3",
                    subtitle: "Day Steak",
                    emoji: "assets/Icons/fire.png"),
                StatisticsContainer(
                    title: "1432",
                    subtitle: "Total XP",
                    emoji: "assets/Icons/Lightining.png"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatisticsContainer(
                    title: "Bronze",
                    subtitle: "Current League",
                    emoji: "assets/Icons/bronze_medals.png"),
                StatisticsContainer(
                    title: "0",
                    subtitle: "Top 3 Finishes",
                    emoji: "assets/Icons/bx_medal.png"),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Friends",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "ADD FRIENDS",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          const FollowersContainer(),
          const InviteFriendContainer(),
        ],
      ),
    );
  }
}
