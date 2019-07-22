import 'package:flutter/material.dart';
import './widgets/expansion_tile.dart';

/**
 * Demo8: expansionTile组件，展开闭合效果
 */
void main() => runApp(Demo8());

class Demo8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpansionTile',
      theme: ThemeData.light(),
      home: ExpansionTileDemo(),
    );
  }
}
