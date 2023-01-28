import 'package:flutter/material.dart';
import 'package:genny_app/view/profile_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../Model/model_login.dart';
import '../controller/controller_home.dart';
import '../controller/controller_navigation.dart';
import 'Home_Screen.dart';
import 'Ledger_Screen.dart';
import 'items_Screen.dart';
import 'offers_Screen.dart';

class bottom_Nav extends StatelessWidget {
  bottom_Nav({Key? key}) : super(key: key);
  NavController navigation_instance = Get.put(NavController());






  //------------------------------ALL_SCreens________________________________________________________________
  List<Widget> navigation_screens = [
    Home(),
    Offers_Page(),
    Items_Page(),
    All_Ledgers(),

    UserProfile(),
  ];

//---------.............>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>







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
                  label: "Ledger",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "profile",
                )
              ])),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              child: UserAccountsDrawerHeader(
                //   margin: EdgeInsets.only(bottom: 680),
                currentAccountPicture: Image(
                    image:
                    AssetImage('assets/icons/BhaiNabeel-modified.png')),
                accountName: Text(
                  "hiiiiii",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .02,
                  ),
                ),
                accountEmail: Text(
                  'schohan123456@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .02,
                  ),
                ),
              ),
            ),
            //////////////////////////////////////////////////////////
            ///
            /////////////////////////////////////////////////////////////////////////////////////
            ListTile(
              focusColor: Colors.blue.shade700,
              hoverColor: Colors.blue.shade700,
              leading: Icon(
                Icons.home,
                color: Colors.black54,
                size: Get.height * .04,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .025),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            ////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////////
            ListTile(
              focusColor: Colors.blue.shade700,
              hoverColor: Colors.blue.shade700,
              leading: Icon(
                Icons.local_offer,
                color: Colors.black54,
                size: Get.height * .04,
              ),
              title: Text(
                'Offers',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .025),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            /////////////////////////////////////////////////////////////////////////////////////
            ListTile(
              focusColor: Colors.blue.shade700,
              hoverColor: Colors.blue.shade700,
              leading: Icon(
                Icons.list,
                color: Colors.black54,
                size: Get.height * .04,
              ),
              title: Text(
                'Items',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .025),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            /////////////////////////////////////////////////////////////////////////////////////
            ListTile(
              focusColor: Colors.blue.shade700,
              hoverColor: Colors.blue.shade700,
              leading: Icon(
                Icons.report,
                color: Colors.black54,
                size: Get.height * .04,
              ),
              title: Text(
                'Ledger',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .025),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            /////////////////////////////////////////////////////////////////////////////////////
            ListTile(
              focusColor: Colors.blue.shade700,
              hoverColor: Colors.blue.shade700,
              leading: Icon(
                Icons.person,
                color: Colors.black54,
                size: Get.height * .04,
              ),
              title: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .025),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            ),
            ////////////////////////////////////////////////////////////////////////
          ],
        ),
        backgroundColor: Colors.blue.shade50,
        elevation: .01,
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.blue.shade900, size: Get.height * .04),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8),
            child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 237, 235, 230),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ))),
          ),
          ///////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                      image: const AssetImage('assets/icons/BhaiNabeel-modified.png')),
                )),
          ),
          ////////////////////////////////////////////////////////
        ],
      ),

    );
  }
}
