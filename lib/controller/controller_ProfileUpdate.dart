import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'controller_login.dart';

class ProfileUpdate extends GetxController{


  loginController _controller = Get.put(loginController());

  var reply;


  profileupdate(changePassword, changeCell) async {
    try {
      var url = Uri.parse('https://newgenny.eavenir.com/api/profileupdate');
      final responce = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'image': "",
          'oldimage': _controller.loginmodel_instance.value.profile_image,
          "password":changePassword,
          "oldpassword": _controller.passwordSave ,
          "cell":changeCell,
          "oldcell":_controller.loginmodel_instance.value.cell,
          "id":_controller.loginmodel_instance.value.userid,
        }),
      );

      reply = jsonDecode(responce.body);


      // print("-----------------------------------------------------------${reply}");
      // print(alldata["User"]["name"]);




      if (reply == "changed") {

        Get.snackbar(

          duration: Duration(seconds: 3),
           "Updated",
          "changed",


        );

        print("password changed" );








      }
      if (reply == "notchanged") {

        print("not changed");
        Get.snackbar(
          "Sorry",
          "not changed",
        );



      }



    } catch (e) {
      print("Catch e: $e");
    }
  }



}