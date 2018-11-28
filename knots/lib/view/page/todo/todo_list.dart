import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:knots/model/task.dart';
import 'package:knots/common/const.dart';
import 'package:knots/view/page/todo/todo_row.dart';

class TodoList extends StatelessWidget {
  
  List<Task> tasks;
  final double dotSize = 12.0;
  TodoList({@required this.tasks});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(top: Const.imageHeight),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildTasksList(),
        ],
      ),
    );
  }

  Widget _buildTasksList() {
    return new Expanded(
      child: new ListView(
        shrinkWrap: true,
        children: tasks.map((task) => new TodoRow(task: task)).toList(),
      ),
    );
  }
}
