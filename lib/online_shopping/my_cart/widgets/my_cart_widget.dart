import 'package:flutter/material.dart';

Widget cartWidget({
  required IconData icon,
  required String img,
  required String title,
  required IconData icon2,
  String? size,
  required String color,
  required String price,
  required String off,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(icon, color: Colors.deepPurple),
          SizedBox(width: 10),
          Container(
            height: 120,
            width: 120,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 223, 233, 250),
            ),
            child: Image.asset(img, height: 120),
          ),
        ],
      ),

      SizedBox(width: 8),

      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(title)),
                Icon(icon2),
              ],
            ),

            SizedBox(height: 5),

            Row(
              children: [
                if (size != null) ...[
                  Text(size),
                  SizedBox(width: 6),
                  SizedBox(
                    height: 12,
                    child: VerticalDivider(thickness: 1, color: Colors.grey),
                  ),
                  SizedBox(width: 6),
                ],
                Text(color),
              ],
            ),

            SizedBox(height: 5),

            Row(
              children: [
                Text(price),
                SizedBox(width: 10),
                Text(
                  off,
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10),

            Row(
              children: [
                Icon(Icons.delete),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
                      Text("1"),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
