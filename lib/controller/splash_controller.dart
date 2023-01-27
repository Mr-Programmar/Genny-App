import 'package:get/get.dart';

import '../view/Login_Screen.dart';

class Splash_Controller extends GetxController{

  splash_navigate() {
    Future.delayed(Duration(seconds: 5), (){
      Get.to((const Login()));
    });

  }



}