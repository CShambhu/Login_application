import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/GetX/RegistrationGetx.dart';
import 'package:login_application/GetX/controller/auth_controller.dart';

class LoginGetx extends StatelessWidget {
  const LoginGetx({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final AuthController controller = Get.put(AuthController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
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
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: "enter your password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(220, 55),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () {
                controller.login(
                  userName: usernameController.text,
                  password: passwordController.text,
                );
              },
              child: Text("Login", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(220, 55),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
              onPressed: () {
                Get.to(RegistrationGetx());
              },
              child: Text("REGISTER", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
