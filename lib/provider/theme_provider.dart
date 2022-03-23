import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  bool isDark() {
    return themeMode == ThemeMode.dark;
  }

  String getBackgroundImage() {
    return isDark()
        ? 'assets/images/background_dark.png'
        : 'assets/images/bg3.png';
  }
}
