import 'dart:async';
import 'package:flutter/material.dart';
import 'package:knots/model/task.dart';
import 'package:knots/service/api/task_service_api.dart';

class TaskApiServiceMock implements TaskApiService{

  Future<List<Task>> getTasks() async {
    return Future.value(taskList);
  }

  Future<List<Task>> getComplete() async {
    List<Task> list = taskList.where((task) {task.completed;}).toList();
    return Future.value(list);
  }
  
}


  List<Task> taskList = List<Task>.of( [
    new Task(
        name: "Catch up with Brian",
        category: "Mobile Project",
        time: "5pm",
        // color: Colors.orange,
        completed: false),
    new Task(
        name: "Make new icons",
        category: "Web App",
        time: "3pm",
        // color: Colors.cyan,
        completed: true),
    new Task(
        name: "Design explorations",
        category: "Company Website",
        time: "2pm",
        // color: Colors.pink,
        completed: false),
    new Task(
        name: "Lunch with Mary",
        category: "Grill House",
        time: "12pm",
        // color: Colors.cyan,
        completed: true),
    new Task(
        name: "Lunch with Mary",
        category: "Grill House",
        time: "12pm",
        // color: Colors.cyan,
        completed: true),
    new Task(
        name: "Lunch with Mary",
        category: "Grill House",
        time: "12pm",
        // color: Colors.cyan,
        completed: true),
    new Task(
        name: "Teem Meeting",
        category: "Hangouts",
        time: "10am",
        // color: Colors.cyan,
        completed: true),
    ]);