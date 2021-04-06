// import 'package:flutter/material.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:honey_panel/pages/dashboard.dart';
// import 'package:honey_panel/pages/login.dart';
//
// class MyStorage {
//   // static String currentPage ='login';
//   GetStorage _storage = GetStorage();
//   //
//   saveStorage(String currentPage) => _storage.write('current_page', currentPage);
//   final Map<String, dynamic> _myPages = {
//     'login': Login(),
//     'dashboard': Dashboard(),
//   };
//   // getCurrentPage(){
//   //   print('currentPage $currentPage');
//   //   print(' _myPages[currentPage] ${ _myPages[currentPage]}');
//   //   return _myPages[currentPage];
//   // }
//   //
//   Future<Widget> getCurrentPage() async {
//     return await _storage.read('current_page').then((value) {
//       print('current page value: $value');
//       return _myPages[value] ?? _myPages['login'];
//       // return (value == null || value == '') ? Login() : value as Widget;
//     });
//   }
//   //
//   get currentPage => getCurrentPage();
// }
