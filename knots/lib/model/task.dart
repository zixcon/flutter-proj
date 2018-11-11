import 'package:flutter/painting.dart';

class Task {
  String name;
  String category;
  String time;
  Color color;
  bool completed;

  Task({
    this.name, this.category, this.time, this.color, this.completed
  });

  // Task.fromMap(Map<String, dynamic> map) {
  //   name = map['name'];
  //   category = map['category'];
  //   time = map['time'];
  //   color = map['color'];
  //   completed = map['completed'];
  //   //releaseDate = DateTime.parse(map['release_date']);
  // }
}
