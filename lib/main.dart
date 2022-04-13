import 'package:flutter/material.dart';

void main() {
  runApp(mainLayout());
}

class mainLayout extends StatefulWidget {
  const mainLayout({Key? key}) : super(key: key);

  @override
  State<mainLayout> createState() => _mainLayoutState();
}

class _mainLayoutState extends State<mainLayout> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Layouts Play'),
      ),
    ));
  }
}
