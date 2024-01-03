import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/pages/settings/settings_store.dart';

class SettingsPageWidget extends StatelessWidget {
  SettingsPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsStore = Modular.get<SettingsStore>();

    return ListenableBuilder(
      listenable: settingsStore,
      builder: (context, child) => Switch(
        value: settingsStore.themeMode == ThemeMode.dark,
        onChanged: (value) {
          settingsStore.themeMode = value ? ThemeMode.dark : ThemeMode.light;
        },
      ),
    );
  }
}
