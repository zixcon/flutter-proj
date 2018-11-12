import 'package:flutter/material.dart';
import 'package:knots/view/page/home/home_page.dart';
import 'package:knots/view/page/empty/empty_page.dart';

import 'package:scoped_model/scoped_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:knots/viewmodel/task_vm.dart';
import 'package:knots/view/panel/task_panel.dart';
import 'package:knots/service/api/task_service_api.dart';
import 'package:knots/view/page/common/common_header.dart';
import 'package:knots/view/page/common/common_image.dart';
import 'package:knots/view/page/common/common_profile.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new EmptyPage(),
          new HomePage(),
          new EmptyPage(),
        ],
      ),
      bottomNavigationBar:  new Material(
        color: Colors.greenAccent,
        child: TabBar(
            controller: tabController,
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.arrow_left),text: '左侧'),
              Tab(icon: Icon(Icons.home),text: '首页'),
              Tab(icon: Icon(Icons.arrow_right),text: '右侧'),
            ],
          ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return new Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     'Star Wars',
      //     style: TextStyle(
      //       fontFamily: 'Distant Galaxy',
      //     ),
      //   ),
      //   bottom: TabBar(
      //     controller: tabController,
      //     indicatorColor: Colors.white,
      //     indicatorWeight: 3.0,
      //     tabs: <Widget>[
      //       Tab(icon: Icon(FontAwesomeIcons.film)),
      //     ],
      //   ),
      // ),
      // body: new Stack(
      //   children: <Widget>[
      //     CommonTopImage(),
      //     CommonTopHeader(),
      //     CommonProfile(),
      //     TaskPanel(),
      //   ]
      // ),
      // body: ScopedModel<TaskViewModel>(
      //   model: taskViewModel,
      //   child: TabBarView(
      //     controller: tabController,
      //     children: <Widget>[
      //       CommonTopImage(),
      //       CommonTopHeader(),
      //       TaskPanel(),
      //     ],
      //   ),
      // ),
  //     bottomNavigationBar:  new Theme(
  //       data: Theme.of(context).copyWith(
  //           canvasColor: Colors.green,
  //           primaryColor: Colors.red,
  //           textTheme: Theme
  //               .of(context)
  //               .textTheme
  //               .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
  //       child: new BottomNavigationBar(
  //         type: BottomNavigationBarType.fixed,
  //         currentIndex: 1,
  //         items: [
  //           new BottomNavigationBarItem(
  //             icon: const Icon(Icons.arrow_left),
  //             title: new Text("左侧")
  //           ),
  //           new BottomNavigationBarItem(
  //             icon: const Icon(Icons.home),
  //             title: new Text("首页")
  //           ),
  //           new BottomNavigationBarItem(
  //             icon: const Icon(Icons.arrow_right),
  //             title: new Text("右侧")
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}