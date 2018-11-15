import 'package:flutter/material.dart';
import 'package:knots/common/routes.dart';
import 'package:knots/view/page/main_page.dart';
import 'package:knots/view/page/login/login_page.dart';

void main() => runApp(KnotsApp());

class KnotsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '绳结记事',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        Routes.routesHomePage: (BuildContext context) => new MainPage(),
        Routes.routesLoginPage: (BuildContext context) => new LoginPage(),
      },
      home: new MainPage(),
    );
  }
}
