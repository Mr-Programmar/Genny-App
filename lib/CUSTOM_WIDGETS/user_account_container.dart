import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class User_Account_Container extends StatelessWidget {
  const User_Account_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .2,
      width: double.infinity,
      child: SizedBox(
        child: UserAccountsDrawerHeader(
          //   margin: EdgeInsets.only(bottom: 680),
          currentAccountPicture:
              Image(image: AssetImage('assets/icons/BhaiNabeel-modified.png')),
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
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: Get.height * .02,
            ),
          ),
        ),
      ),
    ); //// );
  }
}
