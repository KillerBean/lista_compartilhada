import 'package:flutter/material.dart';

class ListDetailPage extends StatelessWidget {
  const ListDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 20),
        Text('List 1'),
        SizedBox(height: 20),
        Text('Items'),
        SizedBox(height: 20),
        Text('Add item'),
        SizedBox(height: 20),
        Text('Share list'),
        SizedBox(height: 20),
        Text('Delete list'),
        SizedBox(height: 20),
      ],
    );
  }
}
