import 'package:flutter/material.dart';

enum ThemeModeType { light, dark }

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  ThemeModeType _themeModeType = ThemeModeType.light;

  ThemeData get themeData => _themeData;
  ThemeModeType get themeModeType => _themeModeType;

  void setThemeMode(ThemeModeType mode) {
    _themeModeType = mode;
    if (mode == ThemeModeType.light) {
      _themeData = ThemeData.light();
    } else {
      _themeData = ThemeData.dark();
    }
    notifyListeners();
  }
}
