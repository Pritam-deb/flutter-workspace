import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter_workspace/widget/models/task.dart';

class TaskData extends ChangeNotifier {
  List _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Drink water'),
    Task(name: 'Take bath'),
  ];
}
