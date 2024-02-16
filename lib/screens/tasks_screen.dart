///
///
///
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/tasks_notifier.dart';
import 'package:to_do_list/screens/addtask_screen.dart';
import 'package:to_do_list/widgets/tasks_listview.dart';

class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      floatingActionButton: FloatingActionButton(
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            borderSide: BorderSide.none),
        backgroundColor: Colors.indigo[400],
        foregroundColor: Colors.white,
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                  child: Container(

                      ///* Important to know about layout
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newTaskTitle) {
                        // setState(() {
                        //   tasks.add(Task(taskName: newTaskTitle));
                        // });
                      }))));
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 42),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.playlist_add_check_sharp,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "ToDayDo",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Text("${Provider.of<TaskNotifier>(context).tasks.length} Tasks",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: const TasksListView()),
            )
          ],
        ),
      ),
    );
  }
}
