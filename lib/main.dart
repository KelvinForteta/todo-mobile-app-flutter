import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/screens/tasks_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TaskData(),
      child: MaterialApp(
        title: 'Todoey',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          //  primarySwatch: Colors.teal,
          canvasColor: Colors.transparent,
        ),
        home: TasksScreen(),
      ),
    );
  }
}
