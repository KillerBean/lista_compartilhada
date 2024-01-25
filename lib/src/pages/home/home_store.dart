import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeStore extends ChangeNotifier {
  bool _forceModularPop = false;
  int _currentPageIndex = 0;
  String? _goToPath;
  init() {
    _navigate();
  }

  bool get forceModularPop => _forceModularPop;
  String? get goToPath => _goToPath;
  clearForceModularPop() {
    _forceModularPop = false;
    _goToPath = null;
    notifyListeners();
  }

  setForceModularPop(bool value, String path) {
    _forceModularPop = value;
    _goToPath = path;
    notifyListeners();
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
      Modular.to.navigate('/lists/');
    } else if (_currentPageIndex == 2) {
      Modular.to.navigate('/settings');
    }
  }
}
