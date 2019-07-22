import 'package:flutter/material.dart';

/**
 * 用于 Demo8
 */
void main() => runApp(ExpansionTileDemo());

class ExpansionTileDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile'),
      ),
      body: Center(
        // 可扩展Tile控件
        child: ExpansionTile(
          initiallyExpanded: true, // 是否默认打开
          title: Text('Expansion Tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.grey, // 打开之后的颜色
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('subtitle'),

            )
          ],
        ),
      ),
    );
  }
}
