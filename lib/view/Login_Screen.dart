import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              TextFormField(decoration: InputDecoration(label: Text("Username"))),
              TextFormField(decoration: InputDecoration(label: Text("Password"))),
              ElevatedButton(onPressed: () {}, child: Text("Sign")),
              Row(
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
