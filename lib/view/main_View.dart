import 'package:flutter/material.dart';
import 'package:genny_app/view/profile_screen.dart';
import 'package:get/get.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
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
        backgroundColor:
            Colors.black, //////$%%%%%%%%%%%%&%%%%%%%%%%%%%%%%%%%%%%%%%%
        elevation: .01,
        child: ListView(
          children: [
            Container(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Custom_Colors.icon_button_Color.withOpacity(.5),
                  ),
                  color: Custom_Colors.app_Background_Color,
                ),
                //   margin: EdgeInsets.only(bottom: 680),
                currentAccountPicture: Image(
                    image: AssetImage('assets/icons/BhaiNabeel-modified.png')),
                accountName: Text(
                  'Ch Nabeel Ahmad',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .02,
                  ),
                ),
                accountEmail: Text(
                  'schohan123456@gmail.com',
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.bold,
                    fontSize: Get.height * .02,
                  ),
                ),
              ),
            ),
            //////////////////////////////////////////////////////////
            // Divider(
            //   thickness: 1,
            //   color: Custom_Colors.icon_button_Color,
            // ),
            /////////////////////////////////////////////////////////////////////////////////////
//             ListTile(
//   title: Text("Item 1"),
//   backgroundColor: Colors.lightBlue,
// ),
            ////////////////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Custom_Colors.app_Background_Color,
                    border: Border.all(
                      width: 2,
                      color: Custom_Colors.icon_button_Color.withOpacity(.5),
                    )),
                child: ListTile(
                  enabled: true,
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: Icon(
                    Icons.home,
                    color: Colors.white60,
                    size: Get.height * .04,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .025),
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
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Custom_Colors.app_Background_Color,
                    border: Border.all(
                      width: 2,
                      color: Custom_Colors.icon_button_Color.withOpacity(.5),
                    )),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: Icon(
                    Icons.local_offer,
                    color: Colors.white60,
                    size: Get.height * .04,
                  ),
                  title: Text(
                    'Offers',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .025),
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
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Custom_Colors.app_Background_Color,
                    border: Border.all(
                      width: 2,
                      color: Custom_Colors.icon_button_Color.withOpacity(.5),
                    )),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: Icon(
                    Icons.list,
                    color: Colors.white60,
                    size: Get.height * .04,
                  ),
                  title: Text(
                    'Items',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .025),
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
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Custom_Colors.app_Background_Color,
                    border: Border.all(
                      width: 2,
                      color: Custom_Colors.icon_button_Color.withOpacity(.5),
                    )),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: Icon(
                    Icons.report,
                    color: Colors.white60,
                    size: Get.height * .04,
                  ),
                  title: Text(
                    'Ledger',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .025),
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
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Custom_Colors.app_Background_Color,
                    border: Border.all(
                      width: 2,
                      color: Custom_Colors.icon_button_Color.withOpacity(.5),
                    )),
                child: ListTile(
                  focusColor: Colors.blue.shade700,
                  hoverColor: Colors.blue.shade700,
                  leading: Icon(
                    Icons.person,
                    color: Colors.white60,
                    size: Get.height * .04,
                  ),
                  title: Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: Get.height * .025),
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
