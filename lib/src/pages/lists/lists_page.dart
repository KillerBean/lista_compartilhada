import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lista_compartilhada/src/pages/home/home_store.dart';

class ListsPageWidget extends StatelessWidget {
  ListsPageWidget({super.key});
  final homeStore = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: () => {
            homeStore.setForceModularPop(true, '/lists/'),
            Modular.to.navigate('/lists/details/'),
          },
          leading: const CircleAvatar(
            child: Text('1'),
          ),
          title: const Text('List 1'),
          subtitle: const Text('2 items'),
          trailing: const Icon(Icons.chevron_right),
        );
      },
    );
  }
}
