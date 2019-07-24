import 'package:flutter/material.dart';

/**
 * Demo13 tooltip 提示控件
 */
class ToolTipDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tool Tip Widget'),
        ),
        body: Center(
          // 使用tooltip把需要出发的控件包裹起来，长按图片出发
          child: Tooltip(
            message: '新专辑呢！',
            child: Image.asset('./images/jay.jpg'),
          ),
        ));
  }
}
