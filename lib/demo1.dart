import 'package:flutter/material.dart';
import './bottom_nav.dart';

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
