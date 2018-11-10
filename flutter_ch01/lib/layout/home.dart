import 'package:flutter/material.dart';
import 'package:flutter_ch01/layout/backout.dart';
import 'package:flutter_ch01/util/const.dart';
import 'package:flutter_ch01/widgets/taskrow.dart';
import 'package:flutter_ch01/module/task.dart';

class KnotsPage extends StatefulWidget {
  KnotsPage({Key key}) : super(key: key);

  @override
  _KnotsPageState createState() => new _KnotsPageState();
}

class _KnotsPageState extends State<KnotsPage> {
  double _imageHeight = Const.imageHeight;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          _buildIamge(),
          _buildTopHeader(),
          _buildProfileRow(),
          _buildBottomPart(),
          _buildTimeline(),
        ],
      ),
    );
  }
  
  Widget _buildIamge() {
    return new ClipPath(
      clipper: new DialogonalClipper(),
      child: new Image.asset(
          'images/home.jpeg',
          fit: BoxFit.fitHeight,
          height: _imageHeight,
          colorBlendMode: BlendMode.srcOver,
          color: new Color.fromARGB(120, 20, 10, 40),
      ),
    );
  }
}

Widget _buildTopHeader() {
  return new Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32.0),
    child: new Row(
      children: <Widget>[
        new Icon(Icons.menu, size: 32.0, color: Colors.white),
        new Expanded(
          child: new Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: new Text(
              "绳结记事",
              style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ),
        new Icon(Icons.linear_scale, color: Colors.white),
      ],
    ),
  );
}

Widget _buildProfileRow() {
  double _imageHeight = Const.imageHeight;
  return new Padding(
    padding: new EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
    child: new Row(
      children: <Widget>[
        new CircleAvatar(
          minRadius: 28.0,
          maxRadius: 28.0,
          backgroundImage: new AssetImage('images/timg.jpeg'),
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Text(
                'Ryan Barnes',
                style: new TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              new Text(
                'Product designer',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildBottomPart() {
  return new Padding(
    padding: new EdgeInsets.only(top: Const.imageHeight),
    child: new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildTasksHeader(),
        _buildTasksList(),
      ],
    ),
  );
}

List<Task> tasks = [
  new Task(
      name: "Catch up with Brian",
      category: "Mobile Project",
      time: "5pm",
      color: Colors.orange,
      completed: false),
  new Task(
      name: "Make new icons",
      category: "Web App",
      time: "3pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Design explorations",
      category: "Company Website",
      time: "2pm",
      color: Colors.pink,
      completed: false),
  new Task(
      name: "Lunch with Mary",
      category: "Grill House",
      time: "12pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Lunch with Mary",
      category: "Grill House",
      time: "12pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Lunch with Mary",
      category: "Grill House",
      time: "12pm",
      color: Colors.cyan,
      completed: true),
  new Task(
      name: "Teem Meeting",
      category: "Hangouts",
      time: "10am",
      color: Colors.cyan,
      completed: true),
];

//TODO
Widget _buildTasksList() {
  
  return new Expanded(
    child: new ListView(
      children: tasks.map((task) => new TaskRow(task: task)).toList(),
    ),
  );
}

Widget _buildTasksHeader() {
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