import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String newTaskTitle = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 167, 167, 167),
      child: Container(
          child: Column(
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
          ),
          TextField(
            autocorrect: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(fontSize: 20),
            ),
            textColor: Colors.white,
            height: 50,
            color: Colors.blue,
          )
        ],
      )),
    );
  }
}
