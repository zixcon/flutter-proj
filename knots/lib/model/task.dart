// import 'package:flutter/painting.dart';
import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable()
class Task {

   String name;
   String category;
   String time;
  //  Color color;
   bool completed;

  // Task({
  //   this.name, this.category, this.time, this.color, this.completed
  // });

  Task({
    this.name, this.category, this.time, this.completed
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);


}
