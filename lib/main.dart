import 'package:flutter/material.dart';
import './home.dart';
import './demo1.dart';

void main() => runApp(MaterialApp(
      home: MyAppHome(), // becomes the route named '/'
      routes: <String, WidgetBuilder>{
                '/demo1': (BuildContext context) => Demo1(),

      },
    ));


