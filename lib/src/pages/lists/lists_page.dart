import 'package:flutter/material.dart';
import 'package:lista_compartilhada/src/pages/lists/list_item/list_item_widget.dart';

class ListsPageWidget extends StatelessWidget {
  const ListsPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const ListItemWidget();
      },
    );
  }
}
