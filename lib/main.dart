import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

var items = ['item1', 'item2', 'item3'];

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                style: TextStyle(fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
          ],
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (oldIndex < newIndex) {
                newIndex -= 1;
              }
              var getReplacedWidget = items.removeAt(oldIndex);
              items.insert(newIndex, getReplacedWidget);
            });
          },
        ),
      ),
    );
  }
}
