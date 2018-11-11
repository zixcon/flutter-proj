import 'package:flutter/material.dart';
import 'package:knots/viewmodel/task_vm.dart';
import 'package:knots/view/panel/task_panel.dart';
import 'package:knots/service/task_service.dart';
import 'package:knots/view/page/common/common_header.dart';
import 'package:knots/view/page/common/common_image.dart';
import 'package:knots/view/page/common/common_profile.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TaskViewModel taskViewModel;

  @override
  void initState() {
    super.initState();
    taskViewModel = TaskViewModel(api: TaskApiService());
    loadData();
  }

  Future loadData() async {
    await taskViewModel.tasks;
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          CommonTopImage(),
          CommonTopHeader(),
          CommonProfile(),
          TaskPanel(),
        ]
      ),
    );
  }

}