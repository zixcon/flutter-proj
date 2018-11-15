import 'package:flutter/material.dart';
import 'package:knots/common/route_util.dart';

class BottomWriteBar extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return new BottomAppBar(
      child: new InkWell(
        onTap: () {
          RouteUtil.route2Login(context);
        },
        child: new Container(
          height: 40.0,
          child: new Center(
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(
                  Icons.edit,
                  color: Colors.blue,
                  size: 20.0,
                ),
                new Text(
                  '写点东西吧',
                  style: new TextStyle(fontSize: 16.0, color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}