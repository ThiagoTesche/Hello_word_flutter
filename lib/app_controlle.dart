import 'package:flutter/material.dart';

class AppControler extends ChangeNotifier {
  bool isDarkTheme = false;

  static AppControler instance = AppControler();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
