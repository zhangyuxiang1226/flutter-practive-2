import 'package:flutter/material.dart';
import './widgets/expansion_panel_list.dart';

/**
 * Demo9 list expasion panel list 
 * 在列表中使用折叠控件
 */
void main() => runApp(Demo9());

class Demo9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionPanelListDemo',
      theme: ThemeData.light(),
      home: ExpansionPanelListDemo(),
    );
  }
}
