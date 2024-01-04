import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/main_app_module.dart';
import 'package:lista_compartilhada/src/main_app_widget.dart';

void main() {
  runApp(ModularApp(module: AppModule(), child: const MainAppWidget()));
}
