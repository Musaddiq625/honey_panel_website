import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honey_panel/controllers/dashboard_controller.dart';
import 'package:honey_panel/items/small_button.dart';
class FormDataPage extends StatelessWidget {
  final DashboardController dashboardController = Get.find();

  @override
  Widget build(BuildContext context) {
    String imageLink = "https://images.unsplash.com/photo-1506102383123-c8ef1e872756?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHw%3D&w=1000&q=80";
    String imageLink2 = "https://firebasestorage.googleapis.com/v0/b/honey-panel.appspot.com/o/images%2Fgorakh_hill_shot.jpg?alt=media&token=6b2feb48-9fe5-4aac-8849-6c7cf958f551";
    return Container(
      // width: Get.size.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Obx(()=>Text('${dashboardController.currentIndex} FORM DATA: ${dashboardController.dataFromFireStore}')),
            // Obx(()=>dashboardController.dataFromFireStore==''?CircularProgressIndicator(backgroundColor: Colors.orange):Container())
            // Image.network(imageLink2),
            Obx(()=>            dashboardController.imageLink.value ==''?
            Container():
            // Image.memory(
            //   Uint8List.fromList(
            //     jsonDecode(dashboardController.imageLink.value))
            // ),
            Text(dashboardController.imageLink.value)),
            // HtmlElementView(viewType:imageLink2,),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(columns: const <DataColumn>[
                  DataColumn(label: Text('ID')),
                  DataColumn(label: Text('-')),
                  DataColumn(label: Text('-')),
                  DataColumn(label: Text('QR')),
                  DataColumn(label: Text('Label')),
                ], rows: <DataRow>[
                  for (int i = 0; i < 5; i++)
                    DataRow(cells: <DataCell>[
                      DataCell(Text('$i')),
                      DataCell(Text('')),
                      DataCell(Text('')),
                      DataCell(Row(children: [
                        // ElevatedButton(onPressed: (){}, child: Text('Exit'),style:ButtonStyle(backgroundColor: )),
                        SmallButton('Exit', () {},
                            btnColor: Colors.blue, fontColor: Colors.white, scaleFactor: 1),
                        SmallButton('Print', () {},
                            btnColor: Colors.blue, fontColor: Colors.white, scaleFactor: 1),
                      ])),
                      DataCell(Row(children: [
                        SmallButton('Exit', () {},
                            btnColor: Colors.blue, fontColor: Colors.white, scaleFactor: 1),
                        SmallButton('Print', () {},
                            btnColor: Colors.blue, fontColor: Colors.white, scaleFactor: 1),
                      ])),
                    ]),
                ],columnSpacing: 30,headingTextStyle:  TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      )
    );
  }
}
