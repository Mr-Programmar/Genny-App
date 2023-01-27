import 'package:flutter/material.dart';
import 'package:genny_app/view/Home_Screen.dart';
import 'package:genny_app/view/Login_Screen.dart';
import 'package:genny_app/view/Splash_Screen.dart';
import 'package:genny_app/view/user_profile.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}
