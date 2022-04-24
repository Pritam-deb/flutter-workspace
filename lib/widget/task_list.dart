import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import './task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (BuildContext context, TaskData, Widget? child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = TaskData.tasks[index];
          return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (bool? checkboxState) {
                TaskData.updateTask(task);
              },
              longPressCallback: () {
                TaskData.deleteTask(task);
              });
        },
        itemCount: TaskData.taskCount,
      );
    });
  }
}
