import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/pages/dashboard/dashboard_page.dart';
import 'package:lista_compartilhada/src/pages/home/home_page.dart';
import 'package:lista_compartilhada/src/pages/home/home_store.dart';
import 'package:lista_compartilhada/src/pages/lists/lists_page.dart';
import 'package:lista_compartilhada/src/pages/settings/settings_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addInstance(HomeStore());
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage(), children: [
      ChildRoute('/dashboard', child: (context) => const DashboardPageWidget()),
      ChildRoute('/lists', child: (context) => const ListsPageWidget()),
      ChildRoute('/settings', child: (context) => const SettingsPageWidget()),
    ]);
  }
}
