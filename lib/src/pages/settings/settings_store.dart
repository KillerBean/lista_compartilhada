import 'package:flutter/material.dart';

class SettingsStore extends ChangeNotifier {
  static final SettingsStore _instance = SettingsStore._();
  factory SettingsStore() => SettingsStore._instance;
  SettingsStore._();

  var _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }

  void toggleThemeMode() {
    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else if (_themeMode == ThemeMode.light) {
      _themeMode = ThemeMode.dark;
    } else {
      _themeMode = ThemeMode.system;
    }
    notifyListeners();
  }
}
