import 'package:flutter/material.dart';
import 'package:knots/model/task.dart';
import 'package:knots/common/const.dart';

class TaskHeader extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return new Padding(
      padding: new EdgeInsets.only(left: 64.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'My Tasks',
            style: new TextStyle(fontSize: 34.0),
          ),
          new Text(
            'FEBRUARY 8, 2015',
            style: new TextStyle(color: Colors.grey, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}