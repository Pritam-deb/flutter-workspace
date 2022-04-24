import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  var checkboxCallback;
  var longPressCallback;

  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      leading: Checkbox(
        onChanged: checkboxCallback,
        value: isChecked,
      ),
      trailing: MaterialButton(
        onPressed: longPressCallback,
        child: const Icon(
          Icons.delete_forever_outlined,
          color: Colors.grey,
        ),
      ),
    );
  }
}
