import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honey_panel/controllers/dashboard_controller.dart';
class FormDataPage extends StatelessWidget {
  final DashboardController dashboardController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
        height: Get.size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(()=>Text('${dashboardController.currentIndex} FORM DATA: ${dashboardController.dataFromFireStore}')),
          Obx(()=>dashboardController.dataFromFireStore==''?CircularProgressIndicator(backgroundColor: Colors.orange):Container())
        ],
      )
    );
  }
}
