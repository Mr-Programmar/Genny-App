import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/Custom_Colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/transaction_container.dart';

class All_Ledgers extends StatelessWidget {
  const All_Ledgers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ////////////////////////////////////////////////////////////////

                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 8, left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ////////////////////////// Day Report ////////////////////////////////////
                      Container(
                          decoration: BoxDecoration(
                              color: Custom_Colors.app_Background_Color,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2,
                                  color: Custom_Colors.icon_button_Color)),
                          // backgroundColor: Custom_Colors.app_Background_Color,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'D',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),
                      ///////////////////// Weak Report ////////////////////////

                      Container(
                          decoration: BoxDecoration(
                              color: Custom_Colors.app_Background_Color,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                // color: Custom_Colors.icon_button_Color,
                              )),
                          // backgroundColor: Custom_Colors.app_Background_Color,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'W',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),

                      // /////////////////////////////////////////////////////////

                      ////////////////////////// Day Report ////////////////////////////////////
                      Container(
                          decoration: BoxDecoration(
                              color: Custom_Colors.app_Background_Color,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                //color: Custom_Colors.icon_button_Color
                              )),
                          // backgroundColor: Custom_Colors.app_Background_Color,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'M',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),
                      ///////////////////// Weak Report ////////////////////////

                      Container(
                          decoration: BoxDecoration(
                              color: Custom_Colors.app_Background_Color,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 2,
                                //color: Custom_Colors.icon_button_Color
                              )),
                          // backgroundColor: Custom_Colors.app_Background_Color,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Y',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize: Get.height * .03),
                              ))),

                      // /////////////////////////////////////////////////////////
                    ],
                  ),
                ),
                //////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Column(
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

                  // child: Container(
                  //   height: MediaQuery.of(context).size.height * .05,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(
                  //         width: 2,
                  //         color: Custom_Colors.icon_button_Color,
                  //       ),
                  //       color: Custom_Colors.app_Background_Color
                  //       // boxShadow: [
                  //       //   BoxShadow(
                  //       //     offset: Offset(20, -1),
                  //       //     blurRadius: 20,
                  //       //     color: Custom_Colors.icon_button_Color,
                  //       //   )
                  //       // ],
                  //       ),
                  //   child: Center(
                  //       child: Text(
                  //     'Ledger ',
                  //     style: TextStyle(
                  //         color: Colors.white60,
                  //         fontSize: MediaQuery.of(context).size.height * .04),
                  //   )),
                  // ),
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
                    itemCount: 8,
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
