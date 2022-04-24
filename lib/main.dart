import 'package:flutter/material.dart';
import 'package:flutter_workspace/widget/models/task_data.dart';
import 'package:flutter_workspace/widget/screen/tasks_screen.dart';
import 'package:provider/provider.dart';
import './widget/screen/tasks_screen.dart';
import './widget/models/task_data.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
