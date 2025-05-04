import 'package:flutter/material.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nidhi Pandya",
                style: TextStyle(fontSize: 25),
              ),
              Text("Nidhi12", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.access_time_filled_outlined, color:Colors.grey,),
                  Text("  Joined March 2022")
                ],
              )
            ],
          ),
        ),
        
        const SizedBox(width: 100),
        Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          width: 90,
          height: 90,
          decoration: const BoxDecoration(shape: BoxShape.circle, color:  Color.fromARGB(245, 229, 229, 229)),
          child: Image.asset("assets/Images/profile_picture.jpg", fit: BoxFit.cover,))
      ],
    );
  }
}
