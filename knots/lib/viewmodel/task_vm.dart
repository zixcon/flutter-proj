import 'dart:async';
import 'package:meta/meta.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:knots/model/task.dart';
import 'package:knots/service/api/task_service_api.dart';
// import 'package:knots/viewmodel/mvvm.dart';

class TaskViewModel extends Model{
// class TaskViewModel extends ViewModel{

  Future<List<Task>> _tasks;
  Future<List<Task>> get tasks => _tasks;
  set tasks(Future<List<Task>> value) {
    _tasks = value;
    notifyListeners();
  }
  
  final TaskApiService api;
  TaskViewModel({@required this.api});

  Future<bool> setTasks() async {
    tasks = api?.getTasks();
    return tasks != null;
  }

  Future<bool> remove(int index) async {
    tasks = api?.getTasks();
    return tasks != null;
  }

  Future<bool> complete() async {
    tasks = api?.getComplete();
    return tasks != null;
  }
  
}