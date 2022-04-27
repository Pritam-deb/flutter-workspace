import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API fetching'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amberAccent),
          child: Center(
            child: Text('Api here'),
          ),
        ),
      ),
    );
  }
}
