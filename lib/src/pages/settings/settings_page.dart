import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/pages/settings/settings_store.dart';

class SettingsPageWidget extends StatelessWidget {
  const SettingsPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final settingsStore = Modular.get<SettingsStore>();

    return ListenableBuilder(
      listenable: settingsStore,
      builder: (context, child) => ListView(
        children: [
          const ListTile(
            // dense: true,
            contentPadding: EdgeInsets.only(top: 8),
            title: Card(
              shape: BeveledRectangleBorder(),
              elevation: 2,
              child: Center(
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Settings',
                      style: TextStyle(fontSize: 24),
                    )),
              ),
            ),
          ),
          SwitchListTile(
            dense: true,
            title: const Text(
              'Dark Mode',
              style: TextStyle(fontSize: 18),
            ),
            value: settingsStore.themeMode == ThemeMode.dark,
            onChanged: (value) {
              settingsStore.themeMode =
                  value ? ThemeMode.dark : ThemeMode.light;
            },
          ),
        ],
      ),
    );
  }
}
