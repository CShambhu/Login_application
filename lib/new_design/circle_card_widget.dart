import 'package:flutter/material.dart';

Widget circleCard(String img, String title, Color color) {
  return Column(
    spacing: 10,
    children: [
      CircleAvatar(
        radius: 32,
        backgroundColor: color,
        child: Image.asset(img, height: 50),
      ),
      Text(title),
    ],
  );
}
