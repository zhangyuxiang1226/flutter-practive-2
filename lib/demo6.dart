import 'package:flutter/material.dart';
import './widgets/search_bar.dart';
/**
 * demo6: 复杂搜索框
 * 实现一个聚焦以后，可以展示搜索历史
 * 输入字以后展示匹配信息，同时实现关键词高亮
 */
void main() => runApp(Demo6());

class Demo6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complex Search Input',
      theme: ThemeData.light(),
      home: MySearchBar(),
    );
  }
}
