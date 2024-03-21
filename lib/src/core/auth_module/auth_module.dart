import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/core/auth_module/auth_service.dart';

class AuthModule extends Module {
  @override
  void exportedBinds(i) {
    i.add(() => AuthService());
  }
}
