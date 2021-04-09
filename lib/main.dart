import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:honey_panel/translations/my_translations.dart';
import 'pages/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await firebase_core.Firebase.initializeApp();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

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
      translations: MyTranslations(),locale: Locale('en'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreenPage()
      // currentPage


        // MyStorage().currentPage

      // LoginPage(),
      // Dashboard()
    );
  }
}
