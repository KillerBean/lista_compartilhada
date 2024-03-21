import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/core/auth_module/auth_service.dart';

class AuthBuilder extends StatelessWidget {
  final Widget? child;
  final AuthService authService;
  const AuthBuilder({
    super.key,
    required this.authService,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: authService,
      builder: (BuildContext context, Widget? child) {
        final authenticated = authService.isAuthenticated;

        if (authenticated) {
          Modular.to.navigate('/home');
        } else {
          Modular.to.navigate('/login');
        }
        return child ?? const CircularProgressIndicator();
      },
    );
  }
}
