// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Items_Container extends StatelessWidget {
  const Items_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .35,
      width: Get.width * .46,
      decoration: BoxDecoration(
        color: Color.fromARGB(137, 210, 202, 202),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
                height: Get.height * .15,
                width: Get.width * .4,
                image:
                    AssetImage('assets/icons/gift_icon-removebg-preview.png')),
            /////////////////////////////////////////////////////////////////
            Container(
              height: Get.height * .16,
              width: Get.width * .4,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ///////////////////////////////////////////////////
                    Text(
                      'Lipstick',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.height * .02),
                    ),
                    /////////////////////////////////////////////////////////////////

                    Text(
                      'Genny Cosmetics',
                      style: TextStyle(
                          color: Color.fromARGB(255, 142, 137, 137),
                          fontWeight: FontWeight.bold,
                          fontSize: Get.height * .02),
                    ),
                    ////////////////////////////////////////////////////////////////
                    Text(
                      'Quantity : 08',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.height * .02),
                    ),
                    ////////////////////////////////////////////////////////////////////

                    Text(
                      'RS /-',
                      style: TextStyle(
                          color: Color.fromARGB(255, 142, 137, 137),
                          fontWeight: FontWeight.bold,
                          fontSize: Get.height * .02),
                    ),
                    ////////////////////////////////////////////////////////////////
                    Text(
                      '8876',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: Get.height * .02),
                    ),
                    ////////////////////////////////////////////////////////////////////
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
