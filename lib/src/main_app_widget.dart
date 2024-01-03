import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/pages/settings/settings_store.dart';

class MainAppWidget extends StatefulWidget {
  const MainAppWidget({super.key});

  @override
  State<MainAppWidget> createState() => _MainAppWidgetState();
}

class _MainAppWidgetState extends State<MainAppWidget> {
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final SettingsStore settingsStore = Modular.get<SettingsStore>();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settingsStore,
      builder: (_, __) => MaterialApp.router(
        title: 'My Smart App',
        scaffoldMessengerKey: scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
        darkTheme: settingsStore.themeMode == ThemeMode.dark
            ? ThemeData.dark()
            : ThemeData.light(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: Modular.routerConfig,
      ),
    );
  }
}
