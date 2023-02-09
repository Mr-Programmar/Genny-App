import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/user_account_container.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
import '../controller/controller_ProfileUpdate.dart';
import '../controller/controller_login.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  ProfileUpdate _profileController = Get.put(ProfileUpdate());
  loginController _controller = Get.put(loginController());
  TextEditingController newPassword = TextEditingController();
  TextEditingController newPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Custom_Colors.app_Background_Color,
        backgroundColor: Colors.black,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //////////////////////////////////////////////////////
                  SizedBox(height: Get.height * .05),
                  /////////////////////////////////////  Profile Container ///////////////////////////////////////////////////////////////////
                  User_Account_Container(
                      container_height: Get.height * .22,
                      container_width: Get.width * .75,
                      top_left_corner_radius: 30,
                      top_right_corner_radius: 30,
                      bottom_left_corner_radius: 30,
                      bottom_right_corner_radius: 30,
                      border_width: 2,
                      border_color: Custom_Colors.icon_button_Color),
                  //--------------------------------------------------------------------------------------Detais container-----------------------------------
//////////////////////////////////////////////////////
                  SizedBox(height: Get.height * .05),
                  /////////////////////////////////////
                  ///////////////////////  Personal Details Container  ////////////////////////////////////
                  Text(
                    "Personal details",
                    style: TextStyle(
                      fontSize: Get.height * .04,
                      color: Custom_Colors.icon_button_Color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //////////////////////////////////////////////////////
                  SizedBox(height: Get.height * .05),
                  /////////////////////////////////////
                  ////////////////////////  Text Fields Column///////////////////////////////
                  Container(
                      // color: Colors.amber.shade100,
                      height: Get.height * .3,
                      width: Get.width * .7,
                      child: SingleChildScrollView(
                        clipBehavior: Clip.none,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

///////////////////////////////////////////////////////////////////////////name
                            TextFormField(
                              enabled: false,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: Get.height * .02,
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Custom_Colors.icon_button_Color,
                                    )),
                                label: Text(
                                  _controller.loginmodel_instance.value.name
                                      .toString(),
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: Get.height * .02,
                                    // color: Colors.white54,
                                    color: Custom_Colors.icon_button_Color,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                hintText: "ASAD WASEEM ",
                                hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: Get.height * .02,
                                  color: Colors.white38,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            ////////////  email ///////////////
                            TextFormField(
                              enabled: false,
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
                                  _controller
                                      .loginmodel_instance.value.emailsave
                                      .toString(),
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
                            /////////  Phone   ///////////
                            TextFormField(
                              controller: newPhone,
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
                                  "New Phone",
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



                            /////////  Password   ///////////
                            TextFormField(
                              controller: newPassword,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: Get.height * .02,
                                color: Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Custom_Colors.icon_button_Color,
                                )),
                                label: Text(
                                  "New Password",
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
                          ],
                        ),
                      )),
                  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                  //////////////////////////////////////////////////////
                  SizedBox(height: Get.height * .05),
                  /////////////////////////////////////
                  GestureDetector(
                    onTap: () {
                      _profileController.profileupdate(newPassword.text, newPhone.text);


                    },
                    child: Container(
                      height: Get.height * .05,
                      width: Get.width * .6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Custom_Colors.icon_button_Color,
                        ),
                        borderRadius: BorderRadius.circular(30),
                        //color: Custom_Colors.app_Background_Color,
                        color: Custom_Colors.icon_button_Color,
                      ),
                      child: Center(
                        child: Text(
                          'Update',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: Get.height * .03,
                            fontWeight: FontWeight.normal,
                            // color: Custom_Colors.icon_button_Color,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
