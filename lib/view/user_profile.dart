import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [


              Container(
                child: Column(children: [
                  CircleAvatar(),
                  Text("ASAD"),
                  Text("asads8864@gmail.com"),
                ],),
              ),


//--------------------------------------------------------------------------------------Detais container-----------------------------------



              Container(
                child: Column(
                  children: [
                    Text("Personal details"),
                    TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          label: Text("Email"), hintText: "asads8864@gmail.com"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Passward"),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Phone"),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Adress"),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
