import 'package:flutter/material.dart';
import 'package:genny_app/view/Home_Screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 200),
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),

          child: Column(
            children: [

              Image(image: AssetImage("assets/icons/Genny_icon_transpart.png")),

              TextFormField(decoration: InputDecoration(label: Text("Username"))),
              TextFormField(decoration: InputDecoration(label: Text("Password"))),
              ElevatedButton(onPressed: () { Get.to(Home());

              }, child: Text("Sign in")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [Text("Don't have an account?"),

                TextButton(onPressed: (){}, child: Text("Sign up")),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
