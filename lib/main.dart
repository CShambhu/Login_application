import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login_application/GetX/controller/auth_controller.dart';
import 'package:login_application/GetX/loginGetx.dart';
import 'package:login_application/GetX/showgetx.dart';
import 'package:login_application/home.dart';
import 'package:login_application/truecaller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(AuthController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final getStorage = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String? username = getStorage.read('username');

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: username != null ? HomeScreen() : LoginGetx(),
    );
  }
}
