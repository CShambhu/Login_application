import 'package:flutter/material.dart';
import 'package:login_application/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> onSubmit(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();

    await pref.setString("username", usernameController.text);
    await pref.setString("password", passwordController.text);

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Registered Successfully")));

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  bool _isHidden = true;

  // final String text = '''Flutter is an open-source UI
  // software development kit created by Google. It can
  //  be used to develop cross platform applications from
  //  a single codebase for the web, Fuchsia, Android,
  //   iOS, Linux, macOS,''';

  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            // color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(Icons.person, size: 80, color: Colors.white),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Create Account",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("ACCOUNT REGISTRATION"),

                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2),

                        hintText: "enter your username",
                        labelText: "Username",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      obscureText: _isHidden,
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () => setState(() {
                            _isHidden = !_isHidden;
                          }),
                          icon: _isHidden
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                        hintText: "enter your password",
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(220, 55),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      onSubmit(context);
                    },

                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),

                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      //     Padding(
                      //       padding: const EdgeInsets.symmetric(horizontal: 20),
                      //       child: Text(
                      //         text,
                      //         maxLines: isExpanded ? null : 2,
                      //         overflow: isExpanded
                      //             ? TextOverflow.clip
                      //             : TextOverflow.ellipsis,
                      //       ),
                      //     ),
                      //     SizedBox(height: 10),
                      //   ],
                      // ),
                      // GestureDetector(
                      //   onTap: () {
                      //     setState(() {
                      //       isExpanded = !isExpanded;
                      //     });
                      //   },
                      //   child: Align(
                      //     alignment: AlignmentGeometry.centerRight,
                      //     child: Text(
                      //       isExpanded ? "See less" : "See more",
                      //       style: TextStyle(
                      //         color: Colors.blue,
                      //         fontWeight: FontWeight.w500,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
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
