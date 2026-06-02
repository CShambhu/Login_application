import 'package:flutter/material.dart';

Widget rowWidget({
  IconData? icon,
  required String title,
  required String another,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          if (icon != null) Icon(icon, size: 30),
          const SizedBox(width: 5),

          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Text(
        another,
        style: const TextStyle(fontSize: 15, color: Colors.deepPurple),
      ),
    ],
  );
}
