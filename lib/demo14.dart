import 'package:flutter/material.dart';
import './widgets/draggable_demo.dart';

/**
 * Demo14 拖拽控件
 */
void main() => runApp(Demo14());

class Demo14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Draggable',
      home: DraggableDemo(),
    );
  }
}
