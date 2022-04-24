import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter_workspace/models/task.dart';

class TaskData extends ChangeNotifier {
  List _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Drink water'),
    Task(name: 'Take bath'),
    Task(name: 'Sleep'),
  ];

  int get taskCount {
    return _tasks.length;
  }
}
