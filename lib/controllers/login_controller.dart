import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:honey_panel/pages/dashboard.dart';
import 'package:honey_panel/shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  onLogin(){
    print('login pressed');
    Get.to(Dashboard());
    if (emailController.text == 'admin@demo.com' && passwordController.text =='admin'){

      // MyStorage.currentPage = 'dashboard';
      // print('SET NEW VALUE TO MyStorage.currentPage${MyStorage.currentPage}');
      Get.to(Dashboard());

      // MyStorage().saveStorage('dashboard');
    }
  }
}