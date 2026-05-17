import 'package:flutter/material.dart';

Widget Recentwidget(
  String userImagePath,
  String username,
  IconData searchicon,
  String numberOfTimes,
  String dateTime,
  IconData arrowicon,
) {
  return Row(
    children: [
      CircleAvatar(
        radius: 25,
        child: Image.asset(userImagePath, height: 50, width: 50),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(username, style: TextStyle(fontSize: 17)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // not working
              children: [
                Row(
                  children: [Icon(searchicon, size: 25), Text(numberOfTimes)],
                ),
                Text(dateTime),
              ],
            ),
          ],
        ),
      ),
      // Spacer(),
      Padding(
        padding: const EdgeInsets.only(left: 132),
        child: Icon(arrowicon, size: 25),
      ),
    ],
  );
}
