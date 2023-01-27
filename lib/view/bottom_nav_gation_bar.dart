import 'package:flutter/material.dart';
import 'package:genny_app/view/user_profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/controller_home.dart';
import '../controller/controller_navigation.dart';
import 'Home_Screen.dart';

class bottom_Nav extends StatelessWidget {
   bottom_Nav({Key? key}) : super(key: key);
   NavController navigation_instance = Get.put(NavController());

  List<Widget> navigation_screens=[Home(),UserProfile(),];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Obx(() => IndexedStack(index: navigation_instance.default_index.value,


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
            icon: Icon(Icons.production_quantity_limits),
            label: "items",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "profile",
          )
        ])),

    );
  }
}
