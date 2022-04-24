import 'package:flutter/material.dart';
import 'package:flutter_workspace/screen/add_task-screen.dart';
// import 'package:provider/provider.dart';

import '../models/task_data.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    ),
                  ));
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(
              Icons.list,
              size: 45,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Todoist',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),
          )
        ],
      ),
    );
  }
}
