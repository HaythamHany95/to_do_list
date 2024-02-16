///
///
///
import 'package:flutter/material.dart';
import 'package:to_do_list/models/task.dart';

class TaskNotifier extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskName: "do assaigment"),
    Task(taskName: "buy rice"),
    Task(taskName: "deliver paper to syndicate"),
    Task(taskName: "study flutter")
  ];

  void addNewTask(String newTask) {
    tasks.add(Task(taskName: newTask));
    notifyListeners();
  }

  void updateCeckBox(Task task) {
    task.doneTask();
    notifyListeners();
  }

  void removeTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
