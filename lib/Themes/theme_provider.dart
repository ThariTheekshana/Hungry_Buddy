// Themes/theme_provider.dart
import 'package:flutter/material.dart';
import 'package:hungry_buddy/Themes/dark_mode.dart';
import 'package:hungry_buddy/Themes/light_mode.dart';

// this helps to switch between dark mode to light mode
class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
