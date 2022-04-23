import 'package:flutter/material.dart';
import './widget/strikeThrough.dart';

void main() {
  runApp(HomePage());
}

var items = ['item1', 'item2', 'item3'];
bool toggle = false;

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
            for (final item in items)
              CheckboxListTile(
                value: toggle,
                onChanged: (bool) {
                  setState(() {
                    if (bool!) {
                      toggle = true;
                    } else {
                      toggle = false;
                    }
                  });
                },
                key: Key(item),
                title: StrikeThrough(
                  todoText: item,
                  todoToggle: toggle,
                ),
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
