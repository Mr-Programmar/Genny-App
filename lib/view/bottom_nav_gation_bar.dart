import 'package:flutter/material.dart';
import 'package:genny_app/view/Ledger_Screen.dart';
import 'package:genny_app/view/items_Screen.dart';
import 'package:genny_app/view/offers_Screen.dart';
import 'package:genny_app/view/user_profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/controller_home.dart';
import '../controller/controller_navigation.dart';
import 'Home_Screen.dart';

class Bottom_Nav extends StatelessWidget {
  Bottom_Nav({Key? key}) : super(key: key);
  NavController navigation_instance = Get.put(NavController());

  List<Widget> navigation_screens = [
    Home(),
    Offers_Page(),
    Items_Page(),
    All_Ledgers(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: navigation_instance.default_index.value,
            children: navigation_screens,
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
              onTap: (index) {
                navigation_instance.default_index.value = index;
              },
              currentIndex: navigation_instance.default_index.value,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.cyan,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_offer),
                  label: "offers",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: "items",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.report),
                  label: "ledger",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "profile",
                )
              ])),
    );
  }
}
