import 'package:flutter/material.dart';

Widget discoverwidget(IconData icon, String title) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 226, 225, 225),
        ),
        height: 80,
        width: 110,
        child: Icon(icon, size: 30),
      ),
      const SizedBox(height: 5),
      Text(title),
    ],
  );
}
