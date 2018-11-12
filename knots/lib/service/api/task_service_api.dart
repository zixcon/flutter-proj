import 'dart:async';
import 'package:knots/model/task.dart';

abstract class TaskApiService {

  Future<List<Task>> getTasks();
}