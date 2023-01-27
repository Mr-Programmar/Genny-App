import 'package:flutter/material.dart';
// import 'package:genny_app/view/Home_Screen.dart';
// import 'package:genny_app/view/Login_Screen.dart';
import 'package:genny_app/view/all_Transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Home(),
      home: all_Transactions(),
    );
  }
}
