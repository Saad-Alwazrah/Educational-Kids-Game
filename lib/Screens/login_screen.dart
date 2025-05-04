import 'package:edcuational_kids_game/Screens/challenges_screen.dart';
import 'package:edcuational_kids_game/Screens/home_screen.dart';
import 'package:edcuational_kids_game/Screens/profiles_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 245, 242),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              Image.asset("assets/Images/kid_title.png"),
              const SizedBox(height: 56),
              Container(
                  height: 60,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "    Username",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(25),
                        )),
                  )),
              const SizedBox(height: 24),
              SizedBox(
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "    Password",
                        hintStyle: const TextStyle(fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 0, style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(25))),
                  )),
              const SizedBox(
                height: 16,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 310,
                  height: 58,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 235, 159, 74)),
                  child: const Text(
                    "GO",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              RichText(
                text: const TextSpan(
                    text: "Don't have account yet? ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: " Sign Up",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Color.fromARGB(255, 165, 214, 167)))
                    ]),
              ),
              const SizedBox(height: 16),
              Stack(clipBehavior: Clip.none,
                children: [
                Image.asset(
                  "assets/Images/login_picture.png",
                  scale: 0.2,
                  
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
