import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screen/tasks_screen.dart';
import './models/task_data.dart';
import 'package:flutter_workspace/models/task_data.dart';
import 'package:flutter_workspace/screen/tasks_screen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
