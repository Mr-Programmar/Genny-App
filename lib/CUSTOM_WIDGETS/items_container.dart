// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/Custom_Colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Items_Container extends StatelessWidget {
  const Items_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: Get.height * .04,
        //  width: Get.width * .2,
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Custom_Colors.icon_button_Color),

          // boxShadow: [
          //   BoxShadow(offset: Offset(0, 0), blurRadius: 15, color: Colors.blue)
          // ],
          //   color: Colors.white60,
          color: Custom_Colors.app_Background_Color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                  height: Get.height * .08,
                  width: Get.width * .4,
                  image: AssetImage('assets/icons/BhaiNabeel.jpg')),
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
                          width: 2, color: Custom_Colors.icon_button_Color),
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
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ///////////////////////////////////////////////////
                        Text(
                          'Lipstick',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.height * .015),
                        ),
                        /////////////////////////////////////////////////////////////////

                        Text(
                          'Genny Cosmetics',
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: Get.height * .015),
                        ),
                        ////////////////////////////////////////////////////////////////
                        Text(
                          'Quantity : 08',
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
                          '8876 -/pkr',
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
  }
}
