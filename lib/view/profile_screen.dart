import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Custom_Widgets/user_account_container.dart';

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

        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            //    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              User_Account_Container(),

//--------------------------------------------------------------------------------------Detais container-----------------------------------

              Container(
                child: Column(
                  children: [
                    Text("Personal details"),
                    TextFormField(
                      enabled: false,
                      decoration: InputDecoration(
                          label: Text("Email"),
                          hintText: "asads8864@gmail.com"),
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
