import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
            taskTitle: Provider.of(context).tasks[index].name,
            isChecked: Provider.of(context).tasks[index].isDone,
            checkboxCallback: (checkboxState) {
              /*setState(() {
               // Provider.of(context).tasks[index].toggleDone();
              });*/
            });
      },
      itemCount: Provider.of(context).tasks.length,
    );
  }
}
