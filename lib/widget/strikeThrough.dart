import 'package:flutter/material.dart';

class StrikeThrough extends StatelessWidget {
  bool todoToggle;
  String todoText;
  StrikeThrough({required this.todoToggle, required this.todoText});

  Widget Strikewidget() {
    if (todoToggle == false) {
      return Text(
        todoText,
        style: TextStyle(fontSize: 22.0),
      );
    } else {
      return Text(
        todoText,
        style: TextStyle(
            fontSize: 22.0,
            decoration: TextDecoration.lineThrough,
            color: Colors.redAccent,
            fontStyle: FontStyle.italic),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Strikewidget();
  }
}
