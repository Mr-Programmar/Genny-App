import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../controller/splash_controller.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  Splash_Controller obj = Get.put(Splash_Controller());

  @override
  void initState() {

    super.initState();
    obj.splash_navigate();


  }


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 200),
         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
         child: Column(
            children: <Widget>[Image(image: AssetImage("assets/icons/Genny_icon_transpart.png")),

              Lottie.asset(
                "assets/icons/splash_loading.json",
                fit: BoxFit.fill,
                height: 200,
                width: 200,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
