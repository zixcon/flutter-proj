import 'package:flutter/material.dart';
import 'package:knots/view/page/common/common_clipper.dart';
import 'package:knots/common/const.dart';

class CommonTopImage extends StatelessWidget {
  double _imageHeight = Const.imageHeight;

  @override
  Widget build(BuildContext context){
    return new ClipPath(
      clipper: new DialogonalClipper(),
      child: new Image.asset(
          'images/home.jpeg',
          fit: BoxFit.fitHeight,
          height: _imageHeight,
          colorBlendMode: BlendMode.srcOver,
          color: new Color.fromARGB(120, 20, 10, 40),
      ),
    );
  }
}