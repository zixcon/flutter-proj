import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:knots/model/task.dart';
import 'package:knots/viewmodel/task_vm.dart';
import 'package:knots/view/page/todo/todo_list.dart';

class TodoPanel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TaskViewModel>(
      builder: (context, child, model) {
        return FutureBuilder<List<Task>>(
          future: model.tasks,
          builder: (_, AsyncSnapshot<List<Task>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                //return Center(child: const CircularProgressIndicator()); 
              case ConnectionState.done:
                if (snapshot.hasData) {
                  var tasks = snapshot.data;
                  return TodoList(tasks: tasks);
                } else if (snapshot.hasError) {
                  // return NoInternetConnection(
                  //   action: () async {
                  //     await model.setTasks();
                  //   },
                  // );
                }
                return TodoList(tasks: []);
            }
          }
        );      
      }
    );
  }
}