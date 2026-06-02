import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:login_application/GetX/controller/auth_controller.dart';
import 'package:login_application/online_shopping/cart_design/cart_design.dart';
import 'package:login_application/online_shopping/my_cart/my_cart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  Get.put(AuthController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final getStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    String? username = getStorage.read('username');

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      // home: username != null ? HomeScreen() : LoginGetx(),
      home: CartDesign(),
    );
  }
}
