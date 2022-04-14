import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(startup_namer());
}

class startup_namer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup Names'),
        ),
        body: Center(child: Text('Hello world')),
      ),
    );
  }
}
