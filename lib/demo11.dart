import 'package:flutter/material.dart';
import './widgets/splash_screen.dart';
/**
 * Demo11 APP闪屏动画
 */
void main() => runApp(Demo11());

class Demo11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bezier Curve',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}
