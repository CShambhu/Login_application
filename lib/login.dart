import 'package:flutter/material.dart';
import 'package:login_application/home.dart';
import 'package:login_application/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_class/Home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> onLogin(BuildContext context) async {
    final pref = await SharedPreferences.getInstance();

    String? savedUsername = pref.getString("username");
    String? savedPassword = pref.getString("password");

    String enteredUsername = usernameController.text;
    String enteredPassword = passwordController.text;

    if (enteredUsername == savedUsername && enteredPassword == savedPassword) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login Failed")));
    }
  }

  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Card(
            // color: Colors.blueGrey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
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
                    "Welcome Back ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text("Login to your account", style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
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
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      obscureText: _isHidden,
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () => setState(() {
                            _isHidden = !_isHidden;
                          }),
                          icon: Icon(
                            _isHidden ? Icons.visibility : Icons.visibility_off,
                          ),
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
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                    onPressed: () {
                      onLogin(context);
                    },

                    child: Text("Login", style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 20),

                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          onLogin(context);
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Registration(),
                              ),
                            );
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ),
                      ),
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
