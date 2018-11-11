import 'package:flutter/material.dart';
import 'package:knots/common/const.dart';

class CommonProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    double _imageHeight = Const.imageHeight;
  return new Padding(
    padding: new EdgeInsets.only(left: 16.0, top: _imageHeight / 2.5),
    child: new Row(
      children: <Widget>[
        new CircleAvatar(
          minRadius: 28.0,
          maxRadius: 28.0,
          backgroundImage: new AssetImage('images/timg.jpeg'),
        ),
        new Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Text(
                'Ryan Barnes',
                style: new TextStyle(
                    fontSize: 26.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              new Text(
                'Product designer',
                style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ),
      ],
    ),
  );
  }
}