import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CommonWeb extends StatefulWidget {
  
  final String title;

  final String url;

  CommonWeb(this.title, this.url);

  @override
  _CommonWebState createState() => _CommonWebState();
}

class _CommonWebState extends State<CommonWeb> {
  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: widget.url,
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      withZoom: true,
      withLocalStorage: true,
    );
  }
}