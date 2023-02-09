import 'package:flutter/material.dart';
import 'package:genny_app/view/Home_Screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../CUSTOM_WIDGETS/Custom_Colors.dart';
import '../controller/controller_items.dart';
import '../controller/controller_login.dart';
import 'main_View.dart';

class Login extends StatefulWidget {
   Login({Key? key,}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {



  TextEditingController _email=TextEditingController();

  TextEditingController _pass=TextEditingController();

  loginController _controller= Get.put(loginController());

   ItemController _controllerItems= Get.put(ItemController());








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
                const EdgeInsets.only(top: 10, bottom: 10, left: 50, right: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image(
                    width: Get.width * .458,
                    image: AssetImage("assets/icons/Genny_icon_transpart.png")),
                //////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////     Username            ////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                Obx(() => Container(
                  height: Get.height * .32,
                  // color: Colors.white,
/////////////////////////////////by deafult true
                  child:   _controller.loading.value==false?
                  Lottie.asset(
                    "assets/icons/loading1.json",
                    fit: BoxFit.fill,
                    height: 200,
                    width: 200,
                  )
                      :Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                          controller: _email,
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
                              hintText: 'Enter Email or Phone Number',
                              hintStyle: TextStyle(
                                  color: Colors.white38,
                                  fontSize: Get.height * .02),
                              label: Text(
                                "Username",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: Get.height * .02,
                                    color: Custom_Colors.icon_button_Color),
                              ))),
                      ///////////////////////////   Password      /////////////////////////////////////////////////////
                      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                      TextFormField(
                          controller: _pass,
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
                                  color: Colors.white38,
                                  fontSize: Get.height * .02),
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: Get.height * .02,
                                    color: Custom_Colors.icon_button_Color),
                              ))),
                      //////////////////////////////////////////////////////////////////////////////////////////
                      //////////////////////////  Update Button //////////////////////////////////////////////////////////////////////
                      GestureDetector(
                          onTap: () async{
                            _controller.loading.value=false;


                            await _controller.login(_email.text, _pass.text);

                            _controller.loading.value=true;



                            _controllerItems.getItemFromApi();



                          },



                          child:Container(
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
                                'Login',
                                style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                  fontSize: Get.height * .03,
                                  fontWeight: FontWeight.normal,
                                  // color: Custom_Colors.icon_button_Color,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )

                      )

                      //////////////////////////////////////////////////////
                    ],
                  ),
                ),),

                //////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////////////////////////////////////////////
              ],
            ),
          ),
        ),
      ),
    );
  }
}
