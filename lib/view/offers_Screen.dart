import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/items_container.dart';
import '../CUSTOM_WIDGETS/offers_container.dart';
import '../CUSTOM_WIDGETS/transaction_container.dart';

class Offers_Page extends StatelessWidget {
  const Offers_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                Offers_Container(),

                //////////////////////////////////////////////
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