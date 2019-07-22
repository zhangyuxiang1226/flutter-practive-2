import 'package:flutter/material.dart';
import './widgets/custome_clipper.dart';
/**
 * Demo10 路径裁切和二次贝塞尔曲线
 */
void main() => runApp(Demo10());

class Demo10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bezier Curve',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CustomClippers(),
    );
  }
}
