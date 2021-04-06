import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'pages/login.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // final box = GetStorage();

  // checkCurrentPage(){
  //   MyStorage().getCurrentPage().then((value) {
  //   });
  // }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  // var currentPage = MyStorage().currentPage;
  // @override
  // void initState() {
  //   currentPage = MyStorage().currentPage;
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    // print('MyStorage.currentPage${MyStorage.currentPage}');
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      // currentPage


        // MyStorage().currentPage

      Login(),
      // Dashboard()
    );
  }
}
