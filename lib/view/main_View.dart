import 'package:flutter/material.dart';
import 'package:genny_app/view/profile_screen.dart';
import 'package:get/get.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
import '../CUSTOM_WIDGETS/user_account_container.dart';
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
      bottomNavigationBar: Obx(() => Theme(
            data: Theme.of(context).copyWith(
              //   canvasColor: Custom_Colors.app_Background_Color,
              canvasColor: Custom_Colors.app_Background_Color,
            ),
            child: BottomNavigationBar(
                iconSize: Get.height * .03,
                //fixedColor: Colors.black,

                backgroundColor: Colors.black,
                onTap: (index) {
                  navigation_instance.default_index.value = index;
                },
                currentIndex: navigation_instance.default_index.value,
                selectedItemColor: Custom_Colors.icon_button_Color,
                unselectedItemColor: Custom_Colors.icon_button_Color,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
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
                ]),
          )),
      drawer: Drawer(
        width: Get.width * .7,
        backgroundColor: Custom_Colors.app_Background_Color,
        elevation: .01,
        child: ListView(
          children: [
            User_Account_Container(
              container_height: Get.height * .2,
              container_width: Get.width * .7,
              top_right_corner_radius: 0,
              top_left_corner_radius: 0,
              bottom_right_corner_radius: 0,
              bottom_left_corner_radius: 0,
              border_width: 0,
              border_color: Colors.transparent,
            ),

            ////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Custom_Colors.app_Background_Color,
                    border: Border(
                      top: BorderSide(
                        width: 2,
                        color: Custom_Colors.icon_button_Color.withOpacity(.5),
                      ),
                      // bottom: BorderSide(
                      //   width: 2,
                      //   color: Custom_Colors.icon_button_Color.withOpacity(.5),
                      // ),
                    )),
                child: ListTile(
                  enabled: true,
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: IconButton(
                      onPressed: () {
                        Get.to(bottom_Nav);
                      },
                      icon: Icon(
                        Icons.home,
                        color: Custom_Colors.icon_button_Color,
                        size: Get.height * .03,
                      )),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .02),
                  ),
                ),
              ),
            ),

/////////////////////////////////////////////////////////////////////////////////////
            // Divider(
            //   thickness: 1,
            //   color: Custom_Colors.icon_button_Color,
            // ),
            ////////////////////////////////////////////////////////////////
            /////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                    color: Custom_Colors.app_Background_Color,
                    border: Border(
                        // bottom: BorderSide(
                        //   width: 2,
                        //   color: Custom_Colors.icon_button_Color.withOpacity(.5),
                        // ),
                        )),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: IconButton(
                      onPressed: () {
                        Get.to(bottom_Nav());
                      },
                      icon: Icon(
                        Icons.local_offer,
                        color: Custom_Colors.icon_button_Color,
                        size: Get.height * .03,
                      )),
                  title: Text(
                    'Offers',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .02),
                  ),
                ),
              ),
            ),
            // Divider(
            //   thickness: 1,
            //   color: Custom_Colors.icon_button_Color,
            // ),
            /////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Custom_Colors.app_Background_Color,
                ),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: IconButton(
                      onPressed: () {
                        Get.to(bottom_Nav());
                      },
                      icon: Icon(
                        Icons.list,
                        color: Custom_Colors.icon_button_Color,
                        size: Get.height * .03,
                      )),
                  title: Text(
                    'Items',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .02),
                  ),
                ),
              ),
            ),
            // Divider(
            //   thickness: 1,
            //   color: Custom_Colors.icon_button_Color,
            // ),
            /////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Custom_Colors.app_Background_Color,
                  // border: Border(
                  //   bottom: BorderSide(
                  //     width: 2,
                  //     color: Custom_Colors.icon_button_Color.withOpacity(.5),
                  //   ),
                  // ),
                ),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: IconButton(
                      onPressed: () {
                        Get.to(bottom_Nav());
                      },
                      icon: Icon(
                        Icons.report,
                        color: Custom_Colors.icon_button_Color,
                        size: Get.height * .03,
                      )),
                  title: Text(
                    'Ledger',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .02),
                  ),
                ),
              ),
            ),
            // Divider(
            //   thickness: 1,
            //   color: Custom_Colors.icon_button_Color,
            // ),
            /////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Custom_Colors.app_Background_Color,
                  // border: Border(
                  //   bottom: BorderSide(
                  //     width: 2,
                  //     color: Custom_Colors.icon_button_Color.withOpacity(.5),
                  //   ),
                  // ),
                ),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: IconButton(
                      onPressed: () {
                        Get.to(bottom_Nav());
                      },
                      icon: Icon(
                        Icons.person,
                        color: Custom_Colors.icon_button_Color,
                        size: Get.height * .03,
                      )),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .02),
                  ),
                ),
              ),
            ),
            // Divider(
            //   thickness: 1,
            //   color: Custom_Colors.icon_button_Color,
            // ),
            ////////////////////////////////////////////////////////////////////////
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Custom_Colors.icon_button_Color, size: Get.height * .04),
        backgroundColor: Custom_Colors.app_Background_Color,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
                backgroundColor: Colors.white30,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Custom_Colors.icon_button_Color,
                    ))),
          ),
          ///////////////////////////////////////////////////////
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Custom_Colors.icon_button_Color,
              child: Padding(
                padding: const EdgeInsets.all(2),
                child: ClipRRect(
                    child: Image(
                        fit: BoxFit.fill,
                        image: const AssetImage(
                            'assets/icons/BhaiNabeel-modified.png'))),
              ),
            ),
          ),
          ////////////////////////////////////////////////////////
        ],
      ),
    );
  }
}
