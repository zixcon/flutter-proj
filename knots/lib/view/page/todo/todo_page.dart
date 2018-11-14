import 'package:flutter/material.dart';
import 'package:knots/view/page/todo/todo_calendar.dart';


class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('待办日历'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              CalendarViewApp(),
            ],
          ),
        ),
      ),
    );
  }
}