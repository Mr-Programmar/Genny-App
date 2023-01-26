import 'package:flutter/material.dart';

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
              ElevatedButton(onPressed: () {}, child: Text("Sign")),
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
