import 'package:flutter/material.dart';
import 'package:genny_app/view/Home_Screen.dart';
// import 'package:genny_app/view/Home_Screen.dart';
// import 'package:genny_app/view/Login_Screen.dart';
import 'package:genny_app/view/Ledger_Screen.dart';
import 'package:genny_app/view/bottom_nav_gation_bar.dart';
import 'package:genny_app/view/items_Screen.dart';
import 'package:genny_app/view/offers_Screen.dart';
import 'package:genny_app/view/user_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //  home: Home(),
      // home: Offers_Page(),
      // home: Items_Page(),
      //home: all_Transactions(),
      // home: UserProfile(),
      home: Bottom_Nav(),
    );
  }
}
