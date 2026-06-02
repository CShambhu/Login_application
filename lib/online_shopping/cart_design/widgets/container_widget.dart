import 'package:flutter/material.dart';

Widget containerWidget(
  IconButton icon,
  String img,
  String title,
  String category,
  String price,
  String off,
) {
  return Container(
    height: 250,
    width: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color.fromARGB(255, 240, 237, 237),
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Align(
          //   alignment: Alignment.topRight,
          //   child: IconButton(onPressed: () {}, icon: icon),
          // ),
          Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.favorite_border),
            ),
          ),
          Center(child: Image.asset(img, height: 120)),
          Text(title, style: TextStyle(fontWeight: FontWeight.w700)),
          Text(category, style: TextStyle(fontWeight: FontWeight.w400)),
          Text(
            price,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
          ),
          Container(
            color: const Color.fromARGB(255, 245, 204, 204),
            child: Text(
              off,
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    ),
  );
}
