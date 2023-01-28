import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/user_account_container.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
          backgroundColor: Colors.transparent.withOpacity(0),
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
                        image: const AssetImage('assets/icons/BhaiNabeel.jpg')),
                  )),
            ),
            ////////////////////////////////////////////////////////
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              User_Account_Container(),

//--------------------------------------------------------------------------------------Detais container-----------------------------------

              Container(
                child: Column(
                  children: [
                    Text("Personal details"),
                    TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          hintText: "asads8864@gmail.com"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Passward"),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Phone"),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Adress"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
