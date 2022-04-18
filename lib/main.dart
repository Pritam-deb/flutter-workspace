import 'package:flutter/material.dart';

import './forms.dart';

void main(List<String> args) {
  runApp(forms());
}

class forms extends StatelessWidget {
  const forms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controllers in Form'),
          backgroundColor: Color.fromARGB(255, 176, 115, 255),
        ),
        body: Forms(),
      ),
    );
  }
}
