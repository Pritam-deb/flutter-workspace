import 'package:flutter/material.dart';

void main() {
  runApp(ListsRender());
}

class ListsRender extends StatefulWidget {
  @override
  State<ListsRender> createState() => _ListRenderState();
}

class _ListRenderState extends State<ListsRender> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lists'),
        ),
      ),
    );
  }
}
