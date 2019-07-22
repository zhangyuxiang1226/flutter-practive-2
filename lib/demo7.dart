import 'package:flutter/material.dart';
import './widgets/wrap_demo.dart';
/**
 * Demo7: wrap流式布局
 * 包含功能是添加增加一个照片栏，并且自动流式布局
 */
void main() => runApp(Demo7());

class Demo7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wrap流式布局',
            theme: ThemeData.light(),
      home: WrapDemo(),
    );
  }
}
