import 'package:flutter/material.dart';
import 'package:login_application/custom_widgets/discoverwidget.dart';
import 'package:login_application/custom_widgets/recentwidget.dart';

class TrueCaller extends StatefulWidget {
  const TrueCaller({super.key});

  @override
  State<TrueCaller> createState() => _TrueCallerState();
}

class _TrueCallerState extends State<TrueCaller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("TrueCaller"),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey,
              child: Image.asset("assets/images/superman.png", height: 50),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("Welcome,", style: TextStyle(fontSize: 15)),
                Text("Alex", style: TextStyle(fontSize: 35)),
              ],
            ),
            SearchBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(Icons.search),
              ),
              hintText: "search a number",
            ),
            SizedBox(height: 15),
            Text(
              "Recents",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Recentwidget(
                  "assets/images/superman.png",
                  "Scammer",
                  Icons.search,
                  ("(399)"),
                  "10:36 AM",
                  Icons.arrow_forward_ios,
                ),
              ],
            ),
            Text(
              "Discover",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                discoverwidget(Icons.search, "Who viewed "),
                discoverwidget(Icons.add_box, "SMS Filtering"),
                discoverwidget(Icons.add_box, "SMS Filtering"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                discoverwidget(Icons.search, "Who viewed "),
                discoverwidget(Icons.add_box, "SMS Filtering"),
                discoverwidget(Icons.add_box, "SMS Filtering"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
