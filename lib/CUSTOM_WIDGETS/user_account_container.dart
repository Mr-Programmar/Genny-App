import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/Custom_Colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class User_Account_Container extends StatelessWidget {
  const User_Account_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * .2,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 10,
            color: Custom_Colors.icon_button_Color.withOpacity(.2),
            //color: Custom_Colors.icon_button_Color..withOpacity(.6),
          )
        ],
        color: Custom_Colors.icon_button_Color.withOpacity(.20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 20,
                    //  color: Colors.blue,
                    color: Custom_Colors.icon_button_Color.withOpacity(.5))
              ],
              //  color: Custom_Colors.icon_button_Color.withOpacity(.43),
              color: Custom_Colors.app_Background_Color),
          //   margin: EdgeInsets.only(bottom: 680),
          currentAccountPicture: Image(
              image: AssetImage(
            'assets/icons/BhaiNabeel-modified.png',
          )),
          accountName: Text(
            'Ch Nabeel Ahmad',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: Get.height * .02,
            ),
          ),
          accountEmail: Text(
            'schohan123456@gmail.com',
            style: TextStyle(
              //  color: Custom_Colors.icon_button_Color,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: Get.height * .02,
            ),
          ),
        ),
      ),
    ); //// );
  }
}
