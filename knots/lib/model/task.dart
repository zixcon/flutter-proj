import 'package:flutter/painting.dart';
// import 'package:json_annotation/json_annotation.dart';

// part 'task.g.dart';

// @JsonSerializable()
class Task {
  final String name;
  final String category;
  final String time;
  final Color color;
  final bool completed;

  const Task({
    this.name, this.category, this.time, this.color, this.completed
  });
  
  // factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  // Map<String, dynamic> toJson() => _$TaskToJson(this);


  // Task.fromMap(Map<String, dynamic> map) {
  //   name = map['name'];
  //   category = map['category'];
  //   time = map['time'];
  //   color = map['color'];
  //   completed = map['completed'];
  //   //releaseDate = DateTime.parse(map['release_date']);
  // }
}
