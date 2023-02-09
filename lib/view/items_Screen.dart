import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/Custom_Colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/transaction_container.dart';
import '../Custom_Widgets/items_container.dart';
import '../controller/controller_items.dart';

class Items_Page extends StatefulWidget {
  const Items_Page({Key? key}) : super(key: key);

  @override
  State<Items_Page> createState() => _Items_PageState();
}

class _Items_PageState extends State<Items_Page> {
  ItemController _itemController = Get.put(ItemController());
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
                    itemCount: _itemController.listsave.length,
                    // The grid view's scroll direction
                    scrollDirection: Axis.vertical,
                    // The item builder
                    itemBuilder: (BuildContext context, int index) {
                      // Return the container for the current index
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          //height: Get.height * .04,
                          //  width: Get.width * .2,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2,
                                color: Custom_Colors.icon_button_Color),

                            // boxShadow: [
                            //   BoxShadow(offset: Offset(0, 0), blurRadius: 15, color: Colors.blue)
                            // ],
                            //   color: Colors.white60,
                            color: Custom_Colors.app_Background_Color,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, bottom: 0, left: 0, right: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(
                                    height: Get.height * .08,
                                    width: Get.width * .4,
                                    image: AssetImage(
                                        'assets/icons/BhaiNabeel.jpg')),
                                /////////////////////////////////////////////////////////////////
                                /// 2nd Mini Container ///
                                //////////////////////////////////////////////////////////////////////////
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                  ),
                                  child: Container(
                                    height: Get.height * .1,
                                    width: Get.width * .4,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 2,
                                            color: Custom_Colors
                                                .icon_button_Color),
                                        // boxShadow: [
                                        //   BoxShadow(
                                        //     offset: Offset(0, -2),
                                        //     blurRadius: 5,
                                        //     color: Custom_Colors.icon_button_Color,
                                        //     //color: Colors.white,
                                        //   )
                                        // ],
                                        color:
                                            // Custom_Colors.second_Mini_Container_Color.withOpacity(.7),
                                            Color.fromARGB(255, 33, 26, 1),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 2),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ///////////////////////////////////////////////////
                                          Text(
                                            _itemController.apidata["Data"]
                                                    [index]["ItemName"]
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: Get.height * .015),
                                          ),
                                          /////////////////////////////////////////////////////////////////

                                          Text(
                                            _itemController.apidata["Data"]
                                                    [index]["CompanyName"]
                                                .toString(),
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontWeight: FontWeight.bold,
                                                fontSize: Get.height * .015),
                                          ),
                                          ////////////////////////////////////////////////////////////////
                                          Text(
                                            'Category:${_itemController.apidata["Data"][index]["CategoryName"].toString()}',
                                            style: TextStyle(
                                                color: Colors.white60,
                                                fontWeight: FontWeight.bold,
                                                fontSize: Get.height * .0157),
                                          ),
                                          ////////////////////////////////////////////////////////////////////

                                          // Text(
                                          //   'RS /-',
                                          //   style: TextStyle(
                                          //       color: Colors.red,
                                          //       fontWeight: FontWeight.bold,
                                          //       fontSize: Get.height * .015),
                                          // ),
                                          ////////////////////////////////////////////////////////////////
                                          Text(
                                            "Pkr.${_itemController.apidata["Data"][index]["Rate"].toString()}",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: Get.height * .02),
                                          ),
                                          ////////////////////////////////////////////////////////////////////
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
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
