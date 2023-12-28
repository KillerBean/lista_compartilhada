import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeStore extends ChangeNotifier {
  int _currentPageIndex = 0;
  init() {
    _navigate();
  }

  int get currentPageIndex => _currentPageIndex;
  set currentPageIndex(int value) {
    _currentPageIndex = value;
    notifyListeners();
    _navigate();
  }

  _navigate() {
    if (_currentPageIndex == 0) {
      Modular.to.navigate('/dashboard');
    } else if (_currentPageIndex == 1) {
      Modular.to.navigate('/lists');
    } else if (_currentPageIndex == 2) {
      Modular.to.navigate('/settings');
    }
  }
}
