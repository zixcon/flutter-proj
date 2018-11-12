import 'package:flutter/material.dart';

class CommonTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Positioned(
    top: 200.0,
    bottom: 10.0,
    left: 32.0,
    child: new Container(
      width: 1.0,
      color: Colors.grey[300],
    ),
  );
  }
}