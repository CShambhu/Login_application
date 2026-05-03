import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 20),
        child: Column(
          children: [
            SizedBox(
              height: 770,
              width: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                color: const Color.fromARGB(255, 241, 238, 238),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 30),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 125),
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(Icons.settings),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey,
                        child: Image.asset(
                          "assets/images/superman.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("johndoe@gmail.com"),
                      SizedBox(height: 40),

                      SizedBox(
                        height: 400,
                        width: 300,
                        child: Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  Text("Personal Information"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios),
                                  Divider(),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  Text("Personal Information"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  Text("Personal Information"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  Text("Personal Information"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  Text("Personal Information"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios),
                                ],
                              ),
                              Divider(),
                              Row(
                                children: [
                                  Icon(Icons.person),
                                  Text("Personal Information"),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios),
                                ],
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
          ],
        ),
      ),
    );
  }
}
