import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honey_panel/shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Widget currentPage = MyStorage().getDefaultPage;

  @override
  void initState() {

       MyStorage().getCurrentPage().then((value) =>setState(() => currentPage = value));

    Future.delayed(Duration(milliseconds: 1500)).then((value) {
      Get.to(currentPage);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('currentPage: $currentPage');
    return Scaffold(
        body: Container(
            height: Get.size.height,
            width: Get.size.width,
            alignment: Alignment.center,
            child: Column(
              children: [
                Text('splash_loading_text'.tr),
                SizedBox(height: 30),
                CircularProgressIndicator(),
              ],
            )));
  }
}
