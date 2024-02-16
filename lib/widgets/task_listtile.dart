///
///
///
import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function(bool?) checkChange;
  final Function() deleteListTile;

  const TaskListTile(
      {super.key,
      required this.taskName,
      required this.isChecked,
      required this.checkChange,
      required this.deleteListTile});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkChange,
      ),
      onLongPress: deleteListTile,
    );
  }
}
