import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
import '../CUSTOM_WIDGETS/transaction_container.dart';
import '../Custom_Widgets/offers_container.dart';

class Offers_Page extends StatelessWidget {
  const Offers_Page({Key? key}) : super(key: key);

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ////////////////////////////////////////////////////////////////
                //////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        'Offers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                            fontSize: Get.height * .05),
                      ),
                      //////////////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 125, right: 125),
                        child: Divider(
                          thickness: 4,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  // Container(
                  //   height: MediaQuery.of(context).size.height * .05,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white30.withOpacity(.5),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           offset: Offset(20, -1),
                  //           blurRadius: 20,
                  //           color: Custom_Colors.icon_button_Color,
                  //         )
                  //       ]),
                  //   child: Center(
                  //       child: Text(
                  //     'Offers',
                  //     style: TextStyle(
                  //         fontSize: MediaQuery.of(context).size.height * .04),
                  //   )),
                  // ),
                ),
                //////////////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////////////////
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Offers_Container();
                    },
                  ),
                ),

                // //////////////////////////////////////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*

Items_Container(),

*/