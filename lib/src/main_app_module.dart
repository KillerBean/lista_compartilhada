import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/core/core_module.dart';
import 'package:lista_compartilhada/src/pages/home/home_page.dart';
import 'package:lista_compartilhada/src/pages/home/home_store.dart';
import 'package:lista_compartilhada/src/pages/lists/lists_module.dart';
import 'package:lista_compartilhada/src/pages/settings/settings_page.dart';
import 'package:lista_compartilhada/src/pages/dashboard/dashboard_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addInstance(HomeStore());
  }

  @override
  final imports = [
    CoreModule(),
  ];

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage(), children: [
      ChildRoute('/dashboard', child: (context) => const DashboardPageWidget()),
      ModuleRoute('/lists', module: ListsModule()),
      ChildRoute('/settings', child: (context) => SettingsPageWidget()),
    ]);
  }
}
