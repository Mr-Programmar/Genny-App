import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
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
        // backgroundColor: Custom_Colors.app_Background_Color,
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              User_Account_Container(),

//--------------------------------------------------------------------------------------Detais container-----------------------------------

              /////////////////////////////////////////////////////////////////////
              Text(
                "Personal details",
                style: TextStyle(
                  fontSize: Get.height * .04,
                  color: Custom_Colors.icon_button_Color,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ///////////////////////////////////////////////////////////////////////
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    /////////////////////////////////////////////////////////////////////////
                    TextFormField(
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: Get.height * .02,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                      ),
                      //  enabled: false,
                      decoration: InputDecoration(
                        //  enabled: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Custom_Colors.icon_button_Color,
                        )),
                        label: Text(
                          "Email",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: Get.height * .02,
                            // color: Colors.white54,
                            color: Custom_Colors.icon_button_Color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        hintText: "asads8864@gmail.com",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: Get.height * .02,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    //////////////////////////////////////////////////////////////////////////
                    TextFormField(
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: Get.height * .02,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                      ),
                      //  enabled: false,
                      decoration: InputDecoration(
                        //  enabled: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Custom_Colors.icon_button_Color,
                        )),
                        label: Text(
                          "Phone",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: Get.height * .02,
                            // color: Colors.white54,
                            color: Custom_Colors.icon_button_Color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        hintText: "03090000000",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: Get.height * .02,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    //////////////////////////////////////////////////////////////////////////
                    TextFormField(
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: Get.height * .02,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                      ),
                      //  enabled: false,
                      decoration: InputDecoration(
                        //  enabled: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Custom_Colors.icon_button_Color,
                        )),
                        label: Text(
                          "Address",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: Get.height * .02,
                            // color: Colors.white54,
                            color: Custom_Colors.icon_button_Color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        hintText: "House abc, xyz town, Lahore ",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: Get.height * .02,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    //////////////////////////////////////////////////////////////////////////
                    TextFormField(
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: Get.height * .02,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold,
                      ),
                      //  enabled: false,
                      decoration: InputDecoration(
                        //  enabled: true,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Custom_Colors.icon_button_Color,
                        )),
                        label: Text(
                          "Password",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: Get.height * .02,
                            // color: Colors.white54,
                            color: Custom_Colors.icon_button_Color,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        hintText: "ab3%@FJ89&%",
                        hintStyle: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: Get.height * .02,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    //////////////////////////////////////////////////////////////////////////
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
