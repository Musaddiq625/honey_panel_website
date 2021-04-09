import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:honey_panel/pages/dashboard.dart';
import 'package:honey_panel/shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onLogin(){
    print('login pressed');
    MyStorage().setSharedPrefValue = 'dashboard';
    Get.to(()=>Dashboard());
  }
}