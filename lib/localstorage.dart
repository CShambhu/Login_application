import 'package:flutter/material.dart';
import 'package:login_application/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Localstorage extends StatefulWidget {
  const Localstorage({super.key});

  @override
  State<Localstorage> createState() => _LocalstorageState();
}

class _LocalstorageState extends State<Localstorage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_2),

                hintText: "enter your username",
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: "enter your password",
                labelText: "password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
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
              child: Text("Register", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
