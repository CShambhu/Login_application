import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/GetX/controller/auth_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthController usercontroller = Get.find<AuthController>();

  bool _balanceHidden = true;

  final List<Map<String, dynamic>> transaction = [
    {"name": "Amazon", "sub": "Shopping", "price": "\$333", "date": "may 12"},
    {
      "name": "Starbucks",
      "sub": "Food & Drinks",
      "price": "\$333",
      "date": "may 12",
    },
    {"name": "Salary", "sub": "Income", "price": "\$333", "date": "may 10"},
  ];

  @override
  // void logOut(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text("Logout"),
  //         content: Text("Are you sure you want to logout? "),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //             child: Text("Cancel"),
  //           ),
  //           TextButton(
  //             onPressed: () async {
  //               SharedPreferences pref = await SharedPreferences.getInstance();
  //               await pref.remove("username");
  //               await pref.remove("password");
  //               Navigator.push(
  //                 context,
  //                 MaterialPageRoute(builder: (context) => LoginScreen()),
  //               );
  //               ScaffoldMessenger.of(
  //                 context,
  //               ).showSnackBar(SnackBar(content: Text("Logout Successfully")));
  //             },
  //             child: Text("Yes"),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  // Future<void> yesOut(BuildContext context) async {
  //   final pref = await SharedPreferences.getInstance();
  //   await pref.remove("username");
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => LoginScreen()),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 5, top: 60, right: 5),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, top: 30, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Hi, ${usercontroller.username.value} !",
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Welcome back"),
                  ),

                  SizedBox(
                    // height: 180,
                    width: double.infinity,
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
                                  _balanceHidden ? "*******" : "\$1,250.00",
                                  style: TextStyle(fontSize: 35),
                                ),
                                IconButton(
                                  onPressed: () => setState(() {
                                    _balanceHidden = !_balanceHidden;
                                  }),

                                  icon: Icon(
                                    _balanceHidden
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.wallet, size: 60),
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

                  //Listview
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: transaction.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Text(transaction[index]["name"][0]),
                          ),
                          title: Text(transaction[index]["name"]),
                          subtitle: Text(transaction[index]["sub"]),
                          trailing: Column(
                            children: [
                              Text(transaction[index]["price"]),
                              Text(transaction[index]["date"]),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // logOut(context);
                      usercontroller.logout();
                    },
                    child: Text("Log Out"),
                  ),
                ],

                // SizedBox(
                //   height: 80,
                //   width: 380,
                //   child: Card(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadiusGeometry.circular(5),
                //     ),
                //     color: const Color.fromARGB(255, 239, 239, 240),
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(left: 15),
                //           child: Icon(Icons.animation),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 15, top: 10),
                //           child: Column(
                //             children: [
                //               Text(
                //                 "Amazon",
                //                 style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 15,
                //                 ),
                //               ),
                //               Text("Shopping"),
                //             ],
                //           ),
                //         ),
                //         Spacer(),
                //         Padding(
                //           padding: const EdgeInsets.only(top: 10, right: 10),
                //           child: Column(
                //             children: [Text("-\$60.00"), Text("May 12")],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 80,
                //   width: 350,
                //   child: Card(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadiusGeometry.circular(10),
                //     ),
                //     color: const Color.fromARGB(255, 239, 239, 240),
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(left: 15),
                //           child: Icon(Icons.animation),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 15, top: 10),
                //           child: Column(
                //             children: [
                //               Text(
                //                 "Starbucks",
                //                 style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 15,
                //                 ),
                //               ),
                //               Text("Food & Drink"),
                //             ],
                //           ),
                //         ),
                //         Spacer(),
                //         Padding(
                //           padding: const EdgeInsets.only(top: 10, right: 10),
                //           child: Column(
                //             children: [Text("-\$5.25"), Text("May 12")],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 80,
                //   width: 350,
                //   child: Card(
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadiusGeometry.circular(10),
                //     ),
                //     color: const Color.fromARGB(255, 239, 239, 240),
                //     child: Row(
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.only(left: 15),
                //           child: Icon(Icons.work),
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 15, top: 10),
                //           child: Column(
                //             children: [
                //               Text(
                //                 "Salary",
                //                 style: TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 15,
                //                 ),
                //               ),
                //               Text("Income"),
                //             ],
                //           ),
                //         ),
                //         Spacer(),
                //         Padding(
                //           padding: const EdgeInsets.only(top: 10, right: 10),
                //           child: Column(
                //             children: [Text("+\$1500.00"), Text("May 12")],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
