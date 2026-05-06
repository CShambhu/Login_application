import 'package:flutter/material.dart';
import 'package:login_application/home.dart';
import 'package:login_application/localstorage.dart';
import 'package:login_application/new.dart';
import 'package:login_application/login.dart';
import 'package:login_application/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: LoginScreen(),
    );
  }
}
