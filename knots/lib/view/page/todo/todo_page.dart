import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:knots/view/page/todo/todo_calendar.dart';
import 'package:knots/view/page/todo/todo_panel.dart';
import 'package:knots/viewmodel/task_vm.dart';
import 'package:knots/service/mock/task_service_mock.dart';


class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  TaskViewModel taskViewModel;

  @override
  void initState() {
    super.initState();
    taskViewModel = TaskViewModel(api: TaskApiServiceMock());
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'todo calendar',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('待办日历'),
        ),
        body:  ScopedModel<TaskViewModel>(
          model: taskViewModel,
          child: new Stack(
            children: <Widget>[
              TodoCalendar(),
              new Divider(height: 50.0,),
              TodoPanel(),
            ]
          ),
          // child: new Stack(
          //   children: <Widget>[
          //     Container(
          //       padding: EdgeInsets.all(32.0),
          //       child: Center(
          //         child: Column(
          //           children: <Widget>[
          //             TodoCalendar(),
          //             new Divider(
          //               height: 50.0,
          //             ),
          //             // TodoPanel(),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ]
          // ),
        ),
      ),
    );
  }
}