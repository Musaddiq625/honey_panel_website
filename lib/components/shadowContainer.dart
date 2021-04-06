import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShadowContainer extends StatelessWidget {
  final List<Widget> widgets;

  ShadowContainer(this.widgets);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width*0.4,
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.5),
              spreadRadius:2,
              offset: Offset(1.2, 1.7),
              blurRadius: 5)
        ]),
        child: Container(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 40,vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: widgets),
          ),
        ));
  }
}
