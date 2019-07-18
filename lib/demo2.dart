import 'package:flutter/material.dart';
import './widgets/bottom_nav_custom.dart';
/**
 * demo2: 非规则的底部导航栏，如snapshot底部有个+按钮
 * bottom_nav_custom 组件，非规则底部栏
 * each_view 组件实现body区域的数据更新
 */
void main() => runApp(Demo2());

class Demo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Nav 2',
      // 自定义主题样本
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BottomNavCustomWidget(),
    );
  }
}
