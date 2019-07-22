import 'package:flutter/material.dart';
import './home.dart';
import './demo1.dart';
import './demo2.dart';
import './demo3.dart';
import './demo4.dart';
import './demo5.dart';
import './demo6.dart';
import './demo7.dart';
import './demo8.dart';
import './demo9.dart';
import './demo10.dart';

void main() => runApp(MaterialApp(
      home: MyAppHome(), // becomes the route named '/'
      routes: <String, WidgetBuilder>{
        '/demo1': (BuildContext context) => Demo1(),
        '/demo2': (BuildContext context) => Demo2(),
        '/demo3': (BuildContext context) => Demo3(),
        '/demo4': (BuildContext context) => Demo4(),
        '/demo5': (BuildContext context) => Demo5(),
        '/demo6': (BuildContext context) => Demo6(),
        '/demo7': (BuildContext context) => Demo7(),
        '/demo8': (BuildContext context) => Demo8(),
        '/demo9': (BuildContext context) => Demo9(),
        '/demo10': (BuildContext context) => Demo10(),
      },
      debugShowCheckedModeBanner: false, // 这一行去掉右上角debug图标
    ));
