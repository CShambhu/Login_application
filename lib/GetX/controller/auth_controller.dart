import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login_application/home.dart';
import 'package:login_application/GetX/loginGetx.dart';

class AuthController extends GetxController {
  RxString username = ''.obs;
  RxString email = ''.obs;
  RxString phone = ''.obs;
  RxString password = ''.obs;

  final getStorage = GetStorage();

  void onInit() {
    super.onInit();

    //read stored username
    username.value = getStorage.read("username") ?? '';
  }

  // final String correctUsername = "ADMIN1";
  // final String correctPassword = "1234";

  void register({
    required String email,
    required String phone,
    required String userName,
    required String passWord,
  }) {
    // save data locally
    getStorage.write('username', userName);
    getStorage.write('email', email);
    getStorage.write('phone', phone);
    getStorage.write('password', passWord);

    // update reactive values
    username.value = userName;
    this.email.value = email;
    this.phone.value = phone;
    password.value = passWord;

    Get.snackbar(
      "Success",
      "Registration completed",
      backgroundColor: Colors.green,
      colorText: Colors.white,
    );
    Get.to(LoginGetx());
  }

  void login({required String userName, required String password}) {
    final savedUser = getStorage.read("username");
    final savedPassword = getStorage.read("password");

    if (userName == savedUser && password == savedPassword) {
      username.value = userName;
      getStorage.write('username', userName);
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
    // remove stored user data
    getStorage.remove('username');
    getStorage.remove('email');
    getStorage.remove('phone');
    getStorage.remove('password');

    // reset reactive values
    username.value = '';
    email.value = '';
    phone.value = '';
    password.value = '';
    Get.offAll(LoginGetx());
    // username.value = '';
  }
}
