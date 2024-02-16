///
///
///
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/tasks_notifier.dart';
import 'package:to_do_list/widgets/task_listtile.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskNotifier>(
        builder: (context, taskNotifier, child) => ListView.builder(
              itemCount: taskNotifier.tasks.length,
              itemBuilder: (_, i) => TaskListTile(
                taskName: taskNotifier.tasks[i].taskName,
                isChecked: taskNotifier.tasks[i].isDone,
                checkChange: (_) {
                  taskNotifier.updateCeckBox(taskNotifier.tasks[i]);
                },
                deleteListTile: () {
                  taskNotifier.removeTask(taskNotifier.tasks[i]);
                },
              ),
            ));
  }
}
