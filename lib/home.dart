import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5, top: 60, right: 5),
        child: SizedBox(
          height: 750,
          width: 400,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 30, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hi, Username !",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.front_hand),
                      Spacer(),
                      Icon(Icons.notifications),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text("Welcome back"),
                  ),

                  SizedBox(
                    height: 180,
                    width: 350,
                    child: Card(
                      // ask about card padding, hi username, card , quick action ko padding alignment
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      color: const Color.fromARGB(255, 210, 238, 252),

                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Wallet Balance"),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "\$1,250.00",
                                  style: TextStyle(fontSize: 35),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Icon(
                                    Icons.wallet,
                                    size: 60,
                                  ), // wallet ko size increase garda , wallet text, balance, view details ko padding effect garira xa
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text("View Details"),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Quick Action",
                        style: TextStyle(
                          fontSize:
                              16, // Quick action ko size increase garda overflow hunxa
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(radius: 30, child: Icon(Icons.send)),
                          Text("Send"),
                        ],
                      ),
                      SizedBox(width: 27),
                      Column(
                        children: [
                          CircleAvatar(radius: 30, child: Icon(Icons.download)),
                          Text("Receive"),
                        ],
                      ),
                      SizedBox(width: 27),

                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.touch_app),
                          ),
                          Text("Top Up"),
                        ],
                      ),
                      SizedBox(width: 27),
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Icon(Icons.more_vert),
                          ),
                          Text("More"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Recent Transaction",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "See All",
                        style: TextStyle(fontSize: 17, color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 80,
                    width: 380,

                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5),
                      ),
                      color: const Color.fromARGB(255, 239, 239, 240),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Icon(Icons.animation),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Amazon",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("Shopping"),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 10),
                            child: Column(
                              children: [Text("-\$60.00"), Text("May 12")],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 350,

                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      color: const Color.fromARGB(255, 239, 239, 240),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Icon(Icons.animation),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Starbucks",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("Food & Drink"),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 10),
                            child: Column(
                              children: [Text("-\$5.25"), Text("May 12")],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 350,

                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                      color: const Color.fromARGB(255, 239, 239, 240),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Icon(Icons.work),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "Salary",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("Income"),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, right: 10),
                            child: Column(
                              children: [Text("+\$1500.00"), Text("May 12")],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
