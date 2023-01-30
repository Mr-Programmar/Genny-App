import 'package:flutter/material.dart';
import 'package:genny_app/view/Home_Screen.dart';
import 'package:genny_app/view/Login_Screen.dart';
import 'package:genny_app/view/Splash_Screen.dart';
import 'package:genny_app/view/profile_screen.dart';
import 'package:get/get.dart';

import 'CUSTOM_WIDGETS/Custom_Colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Custom_Colors.icon_button_Color,
      ),
      home: Splash(),
    );
  }
}
