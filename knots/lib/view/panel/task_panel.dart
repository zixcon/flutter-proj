import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:knots/model/task.dart';
import 'package:knots/viewmodel/task_vm.dart';
// import 'package:knots/viewmodel/mvvm.dart';
import 'package:knots/view/item/task_list.dart';

class TaskPanel extends StatelessWidget {
// class TaskPanel<TaskViewModel> extends View {

  // TaskPanel({ Key key, ViewModel viewModel}) : super(key: key, viewModel: viewModel);

  // TaskViewModel taskViewModel = viewModel;

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TaskViewModel>(
      builder: (context, child, model) {
        return FutureBuilder<List<Task>>(
          future: model.tasks,
          // future: (){
          //   TaskViewModel taskViewModel = viewModel;
          //   return taskViewModel.tasks;
          // },
          builder: (_, AsyncSnapshot<List<Task>> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.active:
              case ConnectionState.waiting:
                //return Center(child: const CircularProgressIndicator()); 
              case ConnectionState.done:
                if (snapshot.hasData) {
                  var tasks = snapshot.data;
                  return TaskList(tasks: tasks);
                } else if (snapshot.hasError) {
                  // return NoInternetConnection(
                  //   action: () async {
                  //     await model.setTasks();
                  //   },
                  // );
                }
                return TaskList(tasks: []);
            }
          }
        );      
      });
  }
}