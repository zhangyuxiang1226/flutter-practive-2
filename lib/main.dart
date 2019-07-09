import 'package:flutter/material.dart';
import './home.dart';
import './demo1.dart';
import './demo2.dart';
import './demo3.dart';
import './demo4.dart';

void main() => runApp(MaterialApp(
      home: MyAppHome(), // becomes the route named '/'
      routes: <String, WidgetBuilder>{
        '/demo1': (BuildContext context) => Demo1(),
        '/demo2': (BuildContext context) => Demo2(),
        '/demo3': (BuildContext context) => Demo3(),
        '/demo4': (BuildContext context) => Demo4(),
      },
    ));
