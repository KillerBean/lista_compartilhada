import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/pages/settings/settings_store.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(i) {
    i.add(SettingsStore.new);
  }
}
