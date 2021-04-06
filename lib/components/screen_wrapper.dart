import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ScreenWrapper extends StatelessWidget {
  final List<Widget> widgets;
  final CrossAxisAlignment crossAxisAlignment;
  ScreenWrapper(this.widgets, {this.crossAxisAlignment = CrossAxisAlignment.center});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          // color: Colors.red,
          height: Get.size.height,
          width: Get.size.width,
          child: SingleChildScrollView(
              child:Column(
                crossAxisAlignment: crossAxisAlignment,
                  children: widgets)
          ),
        ));
  }
}
