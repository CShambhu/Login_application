import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_application/home.dart';
import 'package:login_application/GetX/loginGetx.dart';

class AuthController extends GetxController {
  RxString username = ''.obs;
  RxString email = ''.obs;
  RxString phone = ''.obs;
  RxString password = ''.obs;

  final String correctUsername = "ADMIN1";
  final String correctPassword = "1234";

  void register({
    required String email,
    required String phone,
    required String userName,
    required String passWord,
  }) {
    Get.to(LoginGetx());
  }

  void login({required String userName, required String password}) {
    if (userName == correctUsername && password == correctPassword) {
      username.value = userName;
      Get.to(HomeScreen());
    } else {
      Get.snackbar(
        "Login Failed",
        "Incorrect username & Password",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  void logout() {
    Get.offAll(LoginGetx());
    username.value = '';
  }
}
