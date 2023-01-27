import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genny_app/view/user_profile.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/transaction_container.dart';
import '../controller/controller_home.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  Controller_Home hmctr = Get.put(Controller_Home());
  List <Widget>body=[
    
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(() => BottomNavigationBar(
            onTap: (index) {
              hmctr.default_nav_index.value = index;
            },
            currentIndex: hmctr.default_nav_index.value,
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

        //----------------------------------------------------------------------------------------------------------------------------






        backgroundColor: Colors.white,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .1,
                  color: Colors.transparent.withOpacity(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                                image: const AssetImage(
                                    'assets/icons/BhaiNabeel.jpg')),
                          )),
                      ///////////////////////////////////////////////////////
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(60, 79, 64, 64),
                        child: IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.notifications, color: Colors.black)),
                      ),
                    ],
                  ),
                  //////////////////////////////////////////////////////////
                ),
                //////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////
                Text(
                  'Hello',
                  style: TextStyle(
                      color: Color.fromARGB(255, 57, 52, 52),
                      fontSize: MediaQuery.of(context).size.height * .02,
                      fontWeight: FontWeight.bold),
                ),
                //////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////
                Text(
                  'Nabeel Ahmad',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * .04,
                      fontWeight: FontWeight.bold),
                ),
                //////////////////////////////////////////////////////////////
                Container(
                  margin: EdgeInsets.only(top: 25),
                  height: MediaQuery.of(context).size.height * .3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(10, 35),
                            blurRadius: 200,
                            color: Colors.blue)
                      ]),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 5, right: 0, bottom: 15),
                          child: Text(
                            'Your Balance ...',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height * .02,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        //////////////////////////////////////////////////////////////
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 60, left: 5, right: 0, bottom: 20),
                          child: Text(
                            '987654321 pkr',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height * .03,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                        //////////////////////////////////////////////////////////////
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, bottom: 8, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'LAST DEBIT',
                            style: TextStyle(
                                color: Color.fromARGB(255, 96, 85, 85),
                                fontSize:
                                    MediaQuery.of(context).size.height * .015,
                                fontWeight: FontWeight.bold),
                          ),
                          //////////////////////////////////////////////////
                          Text(
                            'RS/- 987654321',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height * .02,
                                fontWeight: FontWeight.bold),
                          ),
                          /////////////////////////////////////////
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(
                          Icons.arrow_circle_up,
                          color: Colors.white,
                        ),
                      ),
                      /////////////////////////////////////////////////////////

                      Container(
                        color: Colors.blue,
                        height: MediaQuery.of(context).size.height * .04,
                        width: 1,
                      ),
                      /////////////////////////////////////////////
                      ///
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.arrow_circle_up,
                          color: Colors.white,
                        ),
                      ),
                      ////////////////////////////////////////
                      Column(
                        children: [
                          Text(
                            'LAST CREDIT',
                            style: TextStyle(
                                color: Color.fromARGB(255, 96, 85, 85),
                                fontSize:
                                    MediaQuery.of(context).size.height * .015,
                                fontWeight: FontWeight.bold),
                          ),
                          //////////////////////////////////////////////////
                          Text(
                            'RS/- 123456789',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.height * .02,
                                fontWeight: FontWeight.bold),
                          ),
                          /////////////////////////////////////////
                        ],
                      ),

                      /////////////////////////////////////////////////////////
                    ],
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .05,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.5),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(20, -1),
                            blurRadius: 20,
                            color: Colors.blue,
                          )
                        ]),
                    child: Center(
                        child: Text(
                      'New Offers : ',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * .04),
                    )),
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////////////
                /*
                ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return transaction_container();
                  },
                ),
                */
                //////////////////////////////////////////////
                Expanded(
                  flex: 3,
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return transaction_container();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
