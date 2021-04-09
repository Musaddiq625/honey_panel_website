import 'package:flutter/material.dart';
import 'package:honey_panel/pages/dashboard.dart';
import 'package:honey_panel/pages/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyStorage {
  String _currentPageKey = 'current_page';
  _updateSharedPrefValue(String currentPage) async {
    print('setting value: $currentPage in shared pref');
    await SharedPreferences.getInstance()
        .then((sharedPreferencesInstance) =>
            sharedPreferencesInstance.setString(_currentPageKey, currentPage))
        .then((value) => print('shared pref page value ${value ? '' : 'not'} updated'));
  }

  final Map<String, dynamic> _myPages = {
    'login': LoginPage(),
    'dashboard': Dashboard(),
  };

  get getDefaultPage => _myPages['login'];

  set setSharedPrefValue(value) => _updateSharedPrefValue(value);

  Future<Widget> getCurrentPage() async {
    return await SharedPreferences.getInstance().then((sharedPreferencesInstance) {
      print("_myPages[sharedPreferencesInstance.getString(_currentPageKey)]");
      print(_myPages[sharedPreferencesInstance.getString(_currentPageKey)]);
      print(sharedPreferencesInstance.getString(_currentPageKey));
      return _myPages[sharedPreferencesInstance.getString(_currentPageKey)] ?? _myPages['login'];
    });

    // return await SharedPreferences.getInstance().then((sharedPreferencesInstance) =>
    //     sharedPreferencesInstance.getString(_currentPageKey)!
    //     .then((value) async => await _myPages[value] ?? _myPages['login']));
  }
}
