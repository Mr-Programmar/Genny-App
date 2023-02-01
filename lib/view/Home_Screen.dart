import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genny_app/view/profile_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
import '../CUSTOM_WIDGETS/transaction_container.dart';
import '../Model/model_login.dart';
import '../controller/controller_home.dart';
import '../controller/controller_login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //  backgroundColor: Custom_Colors.app_Background_Color,
        backgroundColor: Colors.black,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////
                Text(
                  'Hello',
                  style: TextStyle(
                      color: Colors.white60,
                      fontSize: MediaQuery.of(context).size.height * .02,
                      fontWeight: FontWeight.bold),
                ),
                //////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////
                Text(
                  loginController.loginmodel_instance.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.height * .04,
                      fontWeight: FontWeight.bold),
                ),
                //////////////////////////////////////////////////////////////

                SizedBox(
                  height: 10,
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * .28,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Custom_Colors.icon_button_Color),
                    color: Custom_Colors.app_Background_Color,
                    shape: BoxShape.circle,
                    //////////////////////
                    // boxShadow: [
                    //   BoxShadow(
                    //       offset: Offset(1, 1),
                    //       blurRadius: 100,
                    //       color:
                    //           Custom_Colors.icon_button_Color.withOpacity(.5))
                    // ],
                    // ////////////////////////////////
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Balance',
                          style: TextStyle(
                              //  color: Custom_Colors.icon_button_Color,
                              color: Colors.white60,
                              fontSize:
                                  MediaQuery.of(context).size.height * .03,
                              fontWeight: FontWeight.bold),
                        ),
                        ///////////////////////////////////////////////////////////

                        ResponsiveBuilder(
                          builder: (BuildContext context,
                              SizingInformation sizingInformation) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Text("Rs. 9",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: sizingInformation
                                              .localWidgetSize.width /
                                          15)),
                            );
                          },
                          /////////////////////////////////////////////////////////////////////////////////////
                        ),
                        //////////////////////////////////////////////////////////////
                        //////////////////////////////////////////////////////////////
                        // Text(
                        //   'pkr only /-',
                        //   style: TextStyle(
                        //       color: Color.fromARGB(255, 117, 114, 114),
                        //       fontSize:
                        //           MediaQuery.of(context).size.height * .03,
                        //       fontWeight: FontWeight.bold),
                        // ),
                        // //////////////////////////////////////////////////////////////////////////
                      ],
                    ),
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////

                SizedBox(
                  height: 10,
                ),

                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 3, left: 8, right: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /////////////////////////////////////////////
                      ///  Debit Container
                      /////////////////////////////////////////////////////
                      Container(
                        height: Get.height * .09,
                        width: Get.width * .45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: Custom_Colors.icon_button_Color),
                          color: Custom_Colors.app_Background_Color,
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(1, 1),
                          //     blurRadius: 20,
                          //     color: Custom_Colors.icon_button_Color
                          //         .withOpacity(.37),
                          //   )
                          // ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'DEBIT',
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .02,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  //////////////////////////////////////////////////
                                  Text(
                                    'Rs. 987654321',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 255, 17),
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .02,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  /////////////////////////////////////////
                                ],
                              ),
                              /////////////////////////////////////////////
                              Icon(
                                size: Get.height * .04,
                                Icons.arrow_circle_up,
                                color: Color.fromARGB(255, 0, 255, 17),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /////////////////////////////////////////////////////////

                      /////////////////////////////////////////////
                      ///  Credit Container
                      /////////////////////////////////////////////////////
                      Container(
                        height: Get.height * .09,
                        width: Get.width * .45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                              width: 2, color: Custom_Colors.icon_button_Color),
                          color: Custom_Colors.app_Background_Color,
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(1, 1),
                          //     blurRadius: 20,
                          //     color: Custom_Colors.icon_button_Color
                          //         .withOpacity(.37),
                          //   )
                          // ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'CREDIT',
                                    style: TextStyle(
                                        color: Colors.white60,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .02,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  //////////////////////////////////////////////////
                                  Text(
                                    'Rs. 55555555',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 35, 35),
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                .02,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  /////////////////////////////////////////
                                ],
                              ),
                              /////////////////////////////////////////////
                              Icon(
                                size: Get.height * .04,
                                Icons.arrow_circle_down,
                                color: Color.fromARGB(255, 255, 35, 35),
                              ),
                            ],
                          ),
                        ),
                      ),

                      /////////////////////////////////////////////////////////
                    ],
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////////////

                SizedBox(
                  height: 50,
                ),

                Column(
                  children: [
                    Text(
                      'Recent Ledger',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white60,
                          fontSize: Get.height * .03),
                    ),
                    //////////////////////
                    Padding(
                      padding: const EdgeInsets.only(left: 100, right: 100),
                      child: Divider(
                        thickness: 4,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                //////////////////////////////////////////////

                SizedBox(
                  height: 10,
                ),

                ListView.builder(
                  itemCount: 2,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return transaction_container();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
