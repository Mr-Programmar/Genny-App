import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
import '../CUSTOM_WIDGETS/transaction_container.dart';
import '../Custom_Widgets/offers_container.dart';
import '../controller/controller_offers.dart';

class Offers_Page extends StatefulWidget {
  const Offers_Page({Key? key}) : super(key: key);

  @override
  State<Offers_Page> createState() => _Offers_PageState();
}

class _Offers_PageState extends State<Offers_Page> {
  OffersController _controllerOffers= Get.put(OffersController());
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
                    itemCount: _controllerOffers.OfferSave.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context,  index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: Get.height * .17,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //       offset: Offset(10, 15),
                                  //       blurRadius: 100,
                                  //       color: Custom_Colors.icon_button_Color)
                                  // ],
                                  border: Border.all(
                                      width: 2, color: Custom_Colors.icon_button_Color),
                                  borderRadius: BorderRadius.circular(30),
                                  color: Custom_Colors.app_Background_Color,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 5, right: 60),
                                          child: Text(
                                            'You get',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: Get.height * .023),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2, left: 10),
                                      child: Row(children: [
                                        Image(
                                            height: Get.height * .11,
                                            width: Get.width * .3,
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/icons/BhaiNabeel.jpg')),
                                        /////////////////////////////////////////////////////////////////////////////////////////////////////////////
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Column(
                                            children: [
                                              Text(
                                                _controllerOffers.OffersData["Data"][index]["ItemName"].toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: Get.height * .03),
                                              ),
                                              ////////////////////////////////////////////////////////
                                              Text(
                                                "${_controllerOffers.OffersData["Data"][index]["Company"].toString()}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: Get.height * .02),
                                              ),
                                              ///////////////////////////////////////////////////
                                            ],
                                          ),
                                        )
                                        /////////////////////////////////////////////////////////////////////////////////////////////////////////////                ],
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                              /////////////////////////////////////
                              Positioned(
                                right: -7,
                                top: -8,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: Get.height * .03,
                                  child: Text(
                                    _controllerOffers.OffersData["Data"][index]["TradeOffer"].toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Get.height * .03,
                                    ),
                                  ),
                                ),
                              )
                              /////////////////////////////////////////////////
                            ],
                          ),
                        ),
                      );
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