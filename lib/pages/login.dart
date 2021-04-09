import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honey_panel/components/screen_wrapper.dart';
import 'package:honey_panel/components/shadowContainer.dart';
import 'package:honey_panel/controllers/login_controller.dart';
import 'package:honey_panel/items/button.dart';
import 'package:honey_panel/items/textfield.dart';

class LoginPage extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper([
      SizedBox(height: Get.size.height * 0.2),
      ShadowContainer([Text('login'.tr,textScaleFactor: 1.5,style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 50),
        MyTextField(loginController.emailController),
        SizedBox(height: 30),MyTextField(loginController.passwordController),
        SizedBox(height: 40),
        MyButton(loginController.onLogin,btnText: 'login'.toString().tr)
      ]),
      SizedBox(height: Get.size.height * 0.2),
    ]);
  }
}
