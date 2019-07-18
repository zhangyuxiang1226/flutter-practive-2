import 'package:flutter/material.dart';
import './widgets/bottom_nav.dart';
/**
 * demo1: 规则的底部导航栏
 */
void main() => runApp(Demo1());

class Demo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Nav',
      theme: ThemeData.light(),
      home: BottomNavWidget(),
    );
  }
}
