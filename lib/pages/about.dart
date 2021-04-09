import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: Get.size.width,
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [ Text('about'.tr,textScaleFactor: 2,style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: Get.size.height*0.05),
            Text('about_text'.tr)]),
        ));
  }
}
