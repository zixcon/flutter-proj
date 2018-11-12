import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:knots/viewmodel/task_vm.dart';
import 'package:knots/view/panel/task_panel.dart';
import 'package:knots/service/mock/task_service_mock.dart';
import 'package:knots/view/page/common/common_header.dart';
import 'package:knots/view/page/common/common_image.dart';
import 'package:knots/view/page/common/common_profile.dart';
import 'package:knots/view/page/common/common_timeline.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  TaskViewModel taskViewModel;

  @override
  void initState() {
    super.initState();
    taskViewModel = TaskViewModel(api: TaskApiServiceMock());
    loadData();
  }

  Future loadData() async {
    await taskViewModel.setTasks();
  }
  
  @override
  Widget build(BuildContext context) {
    // return new Scaffold(
    //   body: new Stack(
    //     children: <Widget>[
    //       CommonTopImage(),
    //       CommonTopHeader(),
    //       CommonProfile(),
    //       TaskPanel(),
    //     ]
    //   ),
    // );
    return new Scaffold(
      body: ScopedModel<TaskViewModel>(
        model: taskViewModel,
        child: new Stack(
          children: <Widget>[
          CommonTopImage(),
          CommonTopHeader(),
          CommonProfile(),
          TaskPanel(),
          CommonTimeline(),
        ])
      ),
    );
  }

}