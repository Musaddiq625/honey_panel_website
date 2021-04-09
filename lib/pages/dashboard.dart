import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honey_panel/components/screen_wrapper.dart';
import 'package:honey_panel/controllers/dashboard_controller.dart';
import 'package:honey_panel/pages/about.dart';
import 'package:honey_panel/pages/form_data.dart';

class Dashboard extends StatelessWidget {
  final DashboardController dashboardController = Get.put(DashboardController());
  final List<Map> pages = [
    { 'name':'Dashboard','page': FormDataPage()},
    { 'name':'About','page': AboutPage()},
  ];
  @override
  Widget build(BuildContext context) {
    return ScreenWrapper([
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red.withOpacity(.2),
            height: Get.size.height,
            width: 300,
            child: Drawer(
                child: ListView(
                  shrinkWrap: true,
              children: [


                for (int i = 0; i < pages.length; i++)
                 Obx(()=> ListTile(hoverColor: Colors.redAccent.withOpacity(.5),
                     tileColor: dashboardController.currentIndex ==i? Colors.blue.withOpacity(.7):
                     Colors.transparent,
                     title: Text(pages[i]['name']),
                     onTap:()=> dashboardController.selectPage(i)))
              ],
            )),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Obx(()=>pages[dashboardController.currentIndex]['page']),
            ),
          )
        ],
      )
    ], crossAxisAlignment: CrossAxisAlignment.start);
  }
}
