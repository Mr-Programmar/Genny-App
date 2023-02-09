import 'package:flutter/material.dart';
import 'package:genny_app/CUSTOM_WIDGETS/Custom_Colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/controller_login.dart';

class User_Account_Container extends StatelessWidget {

  loginController _controller= Get.put(loginController());

  final double container_height;
  final double container_width;
  final double top_left_corner_radius;
  final double top_right_corner_radius;
  final double bottom_left_corner_radius;
  final double bottom_right_corner_radius;
  final double border_width;
  final Color border_color;

  User_Account_Container({
    required this.container_height,
    required this.container_width,
    required this.top_left_corner_radius,
    required this.top_right_corner_radius,
    required this.bottom_left_corner_radius,
    required this.bottom_right_corner_radius,
    required this.border_width,
    required this.border_color,
    //super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: container_height,
      width: container_width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(top_left_corner_radius),
            topRight: Radius.circular(top_right_corner_radius),
            bottomLeft: Radius.circular(bottom_left_corner_radius),
            bottomRight: Radius.circular(bottom_right_corner_radius),
          ),
          border: Border.all(width: border_width, color: border_color),
          color: Custom_Colors.app_Background_Color),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:  Image(
                height: Get.height * .09,
                image: NetworkImage(
                  "https://newgenny.eavenir.com/${_controller.loginmodel_instance.value.profile_image.toString()}"),



                )),

    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      _controller.loginmodel_instance.value.name.toString(),

    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold),)),


    Padding(
    padding: const EdgeInsets.all(8.0),

    child: Text(
        _controller.loginmodel_instance.value.emailsave.toString(),

    style: TextStyle(
    //  color: Custom_Colors.icon_button_Color,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: Get.height * .02,
    ))),



        ],
      ),
    ); //// );
  }
}
