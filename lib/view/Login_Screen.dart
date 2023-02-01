import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Model/model_login.dart';
import '../controller/controller_login.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  loginController _controller= Get.put(loginController());




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              Image(image: AssetImage("assets/icons/Genny_icon_transpart.png")),
              TextFormField(
                  controller: emailcontroller,
                  decoration: InputDecoration(label: Text("Email or phone"))),
              TextFormField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(label: Text("Password"))),
              ElevatedButton(onPressed: () async{

               await _controller.login(emailcontroller.text, passwordcontroller.text);






              }, child: Text("Sign in")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: () {}, child: Text("Sign up")),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
