import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list/models/tasks_notifier.dart';
import 'package:to_do_list/screens/tasks_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskNotifier(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Tasks(),
      ),
    );
  }
}
