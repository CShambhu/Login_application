import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/GetX/controller/auth_controller.dart';

class Showgetx extends StatelessWidget {
  Showgetx({super.key});

  final AuthController authcontroller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [Text("Hello ${authcontroller.username.value}")],
        ),
      ),
    );
  }
}
