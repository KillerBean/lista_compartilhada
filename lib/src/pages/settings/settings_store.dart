import 'package:flutter/material.dart';

class SettingsStore extends ChangeNotifier {
  static final SettingsStore _instance = SettingsStore._();
  factory SettingsStore() => SettingsStore._instance;
  SettingsStore._();

  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  set themeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }
}
