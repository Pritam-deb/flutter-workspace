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

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
