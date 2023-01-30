import 'package:flutter/material.dart';
import 'package:genny_app/view/Home_Screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
import 'main_View.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image(
                    width: Get.width * .458,
                    image: AssetImage("assets/icons/Genny_icon_transpart.png")),
                //////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////     Username            ////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                TextFormField(
                    style: TextStyle(
                        color: Colors.white, fontSize: Get.height * .02),
                    cursorHeight: Get.height * .02,
                    decoration: InputDecoration(
                        // focusedBorder: UnderlineInputBorder(
                        //   borderSide: BorderSide(
                        //       color: Custom_Colors.icon_button_Color),
                        //   borderRadius: BorderRadius.circular(30),
                        // ),

                        enabled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Custom_Colors.icon_button_Color),
                          //  borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Enter eMail or Phone Number',
                        hintStyle: TextStyle(
                            color: Colors.white38, fontSize: Get.height * .02),
                        label: Text(
                          "Username",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: Get.height * .02,
                              color: Custom_Colors.icon_button_Color),
                        ))),

                //////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////   Password      /////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                TextFormField(
                    style: TextStyle(
                        color: Colors.white, fontSize: Get.height * .02),
                    cursorHeight: Get.height * .02,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility_off,
                              color: Custom_Colors.icon_button_Color,
                              size: Get.height * .035,
                            )),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(
                        //       color: Custom_Colors.icon_button_Color),
                        //   borderRadius: BorderRadius.circular(30),
                        // ),

                        enabled: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Custom_Colors.icon_button_Color),
                          //  borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                            color: Colors.white38, fontSize: Get.height * .02),
                        label: Text(
                          "Password",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: Get.height * .02,
                              color: Custom_Colors.icon_button_Color),
                        ))),
                //////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                GestureDetector(
                  onTap: () {
                    Get.to(bottom_Nav());
                  },
                  child: Container(
                    height: Get.height * .05,
                    width: Get.width * .8,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Custom_Colors.icon_button_Color,
                      ),
                      borderRadius: BorderRadius.circular(30),
                      color: Custom_Colors.app_Background_Color,
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: Get.height * .03,
                          fontWeight: FontWeight.bold,
                          color: Custom_Colors.icon_button_Color,
                        ),
                      ),
                    ),
                  ),
                )

                /*
                SizedBox(
                  height: Get.height * .07,
                  width: Get.width * .4,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(bottom_Nav());
                      },
                      child: Text("Sign in")),
                ),
*/
                //////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
