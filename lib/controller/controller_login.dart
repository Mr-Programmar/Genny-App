import 'dart:convert';

import 'package:get/get.dart';

import '../Model/model_login.dart';
import '../view/main_View.dart';
import 'package:http/http.dart' as http;

 class loginController extends GetxController {



    static late LoginModel loginmodel_instance;



     static login(email, password) async {
    try {
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



      print(responce.statusCode);
       var alldata = jsonDecode(responce.body);

        loginmodel_instance = LoginModel(name: alldata["User"]["name"],emailsave: alldata["User"]["email"], profile_image: alldata["User"]["image"], userid: alldata["User"]["id"] );

      if (alldata["status"] == "exist") {



        print("User Login Successfully");

        Get.to(bottom_Nav());
      }
    } catch (e) {
      print("Catch e: $e");
    }
  }


}