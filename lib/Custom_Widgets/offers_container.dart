import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Offers_Container extends StatelessWidget {
  const Offers_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: Get.height * .17,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.amber.shade600,
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
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Row(children: [
                    Image(
                        height: Get.height * .09,
                        width: Get.width * .3,
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'assets/icons/gift_icon-removebg-preview.png')),
                    /////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text(
                            'Lorem Shop',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: Get.height * .03),
                          ),
                          ////////////////////////////////////////////////////////
                          Text(
                            'Lorem Shop',
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
                '5%',
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
    );
  }
}
