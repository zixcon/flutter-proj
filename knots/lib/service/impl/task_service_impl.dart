import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:knots/model/task.dart';
import 'package:knots/service/api/task_service_api.dart';

class TaskApiServiceImpl implements TaskApiService{

  final _baseUrl = 'https://swapi.co/api';

  static final TaskApiServiceImpl _internal = TaskApiServiceImpl.internal();
  factory TaskApiServiceImpl () => _internal;
  TaskApiServiceImpl.internal();

  Future<dynamic> _getData(String url) async {
    var response = await http.get(url);
    var data = json.decode(response.body);
    return data;
  }

  // Future<List<Task>> getTaskList() async {
  //   var data = await _getData('$_baseUrl/films');
  //   List<dynamic> tasksData = data['results'];
  //   List<Task> tasks = tasksData.map((f) => new Task(task:f)).toList();
  //   return tasks;
  // }

  Future<List<Task>> getTasks() async {
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
    return tasks.toList();
  }
}