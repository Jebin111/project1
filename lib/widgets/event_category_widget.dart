import 'package:flutter/material.dart';

class EventCategory extends StatelessWidget {
  final String bgImg,title;

  const EventCategory({super.key, required this.bgImg, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage(bgImg),
        ),
        const SizedBox(height: 10),
        Text(title,style: const TextStyle(
          color: Colors.white,

        ),)
      ],
    );
  }
}
