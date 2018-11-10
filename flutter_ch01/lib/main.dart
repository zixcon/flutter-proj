import 'package:flutter/material.dart';
import 'package:flutter_ch01/layout/home.dart';

void main() => runApp(new KnotsApp());

class KnotsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '绳结记事',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new KnotsPage(),
    );
  }
}
