import 'package:flutter/material.dart';
import './widgets/tool_tip.dart';

/**
 * Demo13 tooltip 提示控件
 */
void main() => runApp(Demo13());

class Demo13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tooltip',
      home: ToolTipDemo(),
    );
  }
}
