import 'package:flutter/material.dart';
import './pages/page1.dart';

/**
 * demo3: 导航动画
 */
void main() => runApp(Demo3());

class Demo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigate Animation',
      theme: ThemeData.light(),
      home: FirstPage(),
    );
  }
}
