///
///
///
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/tasks_notifier.dart';

class AddTaskScreen extends StatelessWidget {
  final Function callBack;

  const AddTaskScreen(this.callBack, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[400]),
          ),
          TextField(
            onChanged: (newText) {
              newTaskTitle = newText;
            },
            textAlign: TextAlign.center,
            autofocus: true,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              context.read<TaskNotifier>().addNewTask(newTaskTitle ?? "");
              // Provider.of<TaskNotifier>(context, listen: false)
              //     .addNewTask(newTaskTitle!);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400],
                foregroundColor: Colors.white),
            child: const Text(
              "Add",
              //// style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
