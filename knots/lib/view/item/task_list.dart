import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:knots/model/task.dart';
import 'package:knots/common/const.dart';
import 'package:knots/view/item/task_row.dart';
import 'package:knots/view/item/task_header.dart';

class TaskList extends StatelessWidget {
  List<Task> tasks;
  final double dotSize = 12.0;
  TaskList({@required this.tasks});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(top: Const.imageHeight),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TaskHeader(),
          _buildTasksList(),
        ],
      ),
    );
  }

  Widget _buildTasksList() {
    // return ListView.builder(
    //   itemCount: tasks == null ? 0 : tasks.length,
    //   itemBuilder: (_, int index) {
    //     var task = tasks[index];
    //     return new TaskRow(task: task);
    //   },
    // );
    return new Expanded(
      child: new ListView(
        children: tasks.map((task) => new TaskRow(task: task)).toList(),
      ),
    );
  }
}


Widget _buildTimeline() {
  return new Positioned(
    top: 200.0,
    bottom: 10.0,
    left: 32.0,
    child: new Container(
      width: 1.0,
      color: Colors.grey[300],
    ),
  );
}