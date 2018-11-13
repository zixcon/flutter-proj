
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:knots/view/page/home/home_fab.dart';
import 'package:knots/common/const.dart';
import 'package:knots/viewmodel/task_vm.dart';

class AnimatedFabChange extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return ScopedModelDescendant<TaskViewModel>(
      builder: (context, child, model) {
        return new Positioned(
          top: Const.imageHeight - 36.0,
          right: 16.0,
          child:new AnimatedFab(
            onClick: _changeFilterState(model),
          )
        );
      }
    );
  }

   _changeFilterState(TaskViewModel model) {
    model.complete();
  }

}