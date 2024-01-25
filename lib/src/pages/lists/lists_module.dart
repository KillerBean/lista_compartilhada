import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/core/core_module.dart';
import 'package:lista_compartilhada/src/pages/lists/lists_page.dart';
import 'package:lista_compartilhada/src/pages/lists/list_detail/list_detail_page.dart';

class ListsModule extends Module {
  @override
  void binds(i) {}

  @override
  final imports = [CoreModule()];

  @override
  void routes(r) {
    r.child('/', child: (context) => ListsPageWidget());
    r.child('/details/:id', child: (context) => const ListDetailPage());
  }
}
