import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/Custom_Colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/transaction_container.dart';
import '../Custom_Widgets/items_container.dart';

class Items_Page extends StatelessWidget {
  const Items_Page({Key? key}) : super(key: key);

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
                //////////////////////////////////////////////////////////////////////////////////
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        'Items',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white60,
                            fontSize: Get.height * .05),
                      ),
                      //////////////////////
                      Padding(
                        padding: const EdgeInsets.only(left: 130, right: 130),
                        child: Divider(
                          thickness: 4,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),

                  //  Container(
                  //   height: MediaQuery.of(context).size.height * .05,
                  //   width: double.infinity,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //         width: 2, color: Custom_Colors.icon_button_Color),
                  //     color: Custom_Colors.app_Background_Color,
                  //     // boxShadow: [
                  //     //   BoxShadow(
                  //     //     offset: Offset(20, -1),
                  //     //     blurRadius: 10,
                  //     //     color: Custom_Colors.icon_button_Color,
                  //     //   )
                  //     // ],
                  //   ),
                  //   child: Center(
                  //       child: Text(
                  //     'Items',
                  //     style: TextStyle(
                  //         color: Colors.white60, fontSize: Get.height * .04),
                  //   )),
                  // ),
                ),
                //////////////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////
                Expanded(
                  child: GridView.builder(
                    // The number of items in the grid
                    itemCount: 10,
                    // The grid view's scroll direction
                    scrollDirection: Axis.vertical,
                    // The item builder
                    itemBuilder: (BuildContext context, int index) {
                      // Return the container for the current index
                      return Items_Container();
                    },
                    // The grid view's gridDelegate
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                  ),
                ),

                //Items_Container(),

                //////////////////////////////////////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
