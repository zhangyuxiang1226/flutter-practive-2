import 'package:flutter/material.dart';
import './widgets/right_back.dart';

/**
 * Demo12 右滑返回操作
 */
void main() => runApp(Demo12());

class Demo12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Right slide back',
      home: RightBack(),
    );
  }
}
