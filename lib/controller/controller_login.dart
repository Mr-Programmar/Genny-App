import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Model/model_login.dart';
import '../view/Login_Screen.dart';
import '../view/main_View.dart';
import 'package:http/http.dart' as http;

class loginController extends GetxController {
  RxBool loading = true.obs;

  var alldata;
  var passwordSave;

  late final loginmodel_instance = LoginModel(
      status: alldata["User"]["status"].toString(),
          cell: alldata["User"]["cell"].toString(),
          remember_token: alldata["User"]["remember_token"].toString(),
          name: alldata["User"]["name"].toString(),
          emailsave: alldata["User"]["email"].toString(),
          profile_image: alldata["User"]["image"].toString(),
          userid: alldata["User"]["id"].toString())
      .obs;

  login(email, password) async {
    try {
      passwordSave = password;
      var url = Uri.parse('https://newgenny.eavenir.com/api/login');
      final responce = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

       alldata = await  jsonDecode(responce.body);

      // print(alldata);
      // print(alldata["User"]["name"]);
      print(alldata["status"]);

      loginmodel_instance(LoginModel(
          cell: alldata["User"]["cell"].toString(),
          remember_token: alldata["User"]["remember_token"].toString(),
          name: alldata["User"]["name"].toString(),
          emailsave: alldata["User"]["email"].toString(),
          profile_image: alldata["User"]["image"].toString(),
          userid: alldata["User"]["id"].toString(),
          status: alldata["User"]["status"].toString()



      )



      );

      print(
          "_________________________________________________________________________________________________________________---${loginmodel_instance.value.name}");

      if (alldata["status"] == "exist") {
        // print("status a rha ha");
        // print(alldata["status"]);

        Get.to(bottom_Nav());
      }






    } catch (e) {
      print("Catch e: $e");
    }
  }
}
