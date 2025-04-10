import 'package:flutter/material.dart';
import 'color.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeMode _themeMode = ThemeMode.system;
  late ColorScheme _darkScheme = darkColorScheme;
  late ColorScheme _lightScheme = lightColorScheme;

  ThemeMode get themeMode => _themeMode;

  void setTheme(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }

  ColorScheme get darkScheme => _darkScheme;
  void setdarkScheme(ColorScheme value) {
    _darkScheme = value;
    notifyListeners();
  }

  ColorScheme get lightScheme => _lightScheme;
  void setlightScheme(ColorScheme value) {
    _lightScheme = value;
    notifyListeners();
  }
}
