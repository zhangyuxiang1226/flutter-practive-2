import 'package:flutter/material.dart';

class EachView extends StatefulWidget {
  String _title;
  EachView(this._title); // 是从父页面的导航传递进来的title
  @override
  _EachViewState createState() => _EachViewState();
}

class _EachViewState extends State<EachView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
