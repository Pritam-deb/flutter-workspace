import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

var items = ['item1', 'item2', 'item3'];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todo list'),
        ),
        body: ReorderableListView(
          children: [
            for (final value in items)
              Text(
                value,
                key: Key(value),
              ),
          ],
          onReorder: (oldIndex, newIndex) {},
        ),
      ),
    );
  }
}
