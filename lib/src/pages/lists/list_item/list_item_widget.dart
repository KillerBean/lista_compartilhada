import 'package:flutter/material.dart';

class ListItemWidget extends StatelessWidget {
  const ListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      onChanged: (value) => {},
      value: false,
      title: const Text('Lists'),
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}
