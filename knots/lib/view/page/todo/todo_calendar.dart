import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:knots/viewmodel/task_vm.dart';
import 'package:knots/common/const.dart';
import 'package:flutter_calendar/flutter_calendar.dart';


class TodoCalendar extends StatefulWidget {
  @override
  _TodoCalendarState createState() => _TodoCalendarState();
}

class _TodoCalendarState extends State<TodoCalendar> {

  void handleNewDate(model, date) {
    print("handleNewDate ${date}");
    model.complete();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TaskViewModel>(
      builder: (context,child,model){
        return  new Calendar(
                  onSelectedRangeChange: (range) =>
                      print("Range is ${range.item1}, ${range.item2}"),
                  onDateSelected: (date) => handleNewDate(model, date),
                  isExpandable: true,
        );
      }
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('text'),
    //   ),
    //   body: Container(
    //     padding: EdgeInsets.all(32.0),
    //     child: Center(
    //       child: Column(
    //         children: <Widget>[],
    //       ),
    //     ),
    //   ),
    // );
  }
}

// class TodoCalendar extends StatelessWidget {


//   void handleNewDate(model, date) {
//     print("handleNewDate ${date}");
//     // model.complete();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // return new Container(
//     //         child: ScopedModelDescendant<TaskViewModel>(
//     //           builder: (context, child, model) {
//     //             new Calendar(
//     //               onSelectedRangeChange: (range) =>
//     //                   print("Range is ${range.item1}, ${range.item2}"),
//     //               // onDateSelected: (date) => handleNewDate(model, date),
//     //               isExpandable: true,
//     //               // onDateSelected: (date) => handleNewDate(model, date),
//     //             );
//     //           }
//     //         ),
//     // );

//         return new Calendar(
//                   onSelectedRangeChange: (range) =>
//                       print("Range is ${range.item1}, ${range.item2}"),
//                   onDateSelected: (date) => handleNewDate(null, date),
//                   isExpandable: true,
//         );
//   }

  // @override
  // Widget build(BuildContext context) {
  //   return new MaterialApp(
  //     title: 'Flutter Demo',
  //     theme: new ThemeData(
  //       primarySwatch: Colors.purple,
  //     ),
  //     home: new Scaffold(
  //       appBar: new AppBar(
  //         title: new Text('Flutter Calendar'),
  //       ),
  //       body: new Container(
  //         margin: new EdgeInsets.symmetric(
  //           horizontal: 5.0,
  //           vertical: 10.0,
  //         ),
  //         child: new ListView(
  //           shrinkWrap: true,
  //           children: <Widget>[
  //             new Text('The Default Calendar:'),
  //             new Calendar(
  //               onSelectedRangeChange: (range) =>
  //                   print("Range is ${range.item1}, ${range.item2}"),
  //               onDateSelected: (date) => handleNewDate(date),
  //             ),
  //             new Divider(
  //               height: 50.0,
  //             ),
  //             new Text('The Expanded Calendar:'),
  //             new Calendar(
  //               onSelectedRangeChange: (range) =>
  //                   print("Range is ${range.item1}, ${range.item2}"),
  //               isExpandable: true,
  //             ),
  //             new Divider(
  //               height: 50.0,
  //             ),
  //             new Text('A Custom Weekly Calendar:'),
  //             new Calendar(
  //               onSelectedRangeChange: (range) =>
  //                   print("Range is ${range.item1}, ${range.item2}"),
  //               isExpandable: true,
  //               dayBuilder: (BuildContext context, DateTime day) {
  //                 return new InkWell(
  //                   onTap: () => print("OnTap ${day}"),
  //                   child: new Container(
  //                     decoration: new BoxDecoration(
  //                         border: new Border.all(color: Colors.black38)),
  //                     child: new Text(
  //                       day.day.toString(),
  //                     ),
  //                   ),
  //                 );
  //               },
  //             ),
  //             new Divider(
  //               height: 50.0,
  //             ),
  //             new Text('A Custom Weekly Calendar:'),
  //             new Calendar(
  //               onSelectedRangeChange: (range) =>
  //                   print("Range is ${range.item1}, ${range.item2}"),
  //               onDateSelected: (date) => handleNewDate(date),
  //               isExpandable: true,
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
// }
