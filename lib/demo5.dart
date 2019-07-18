import 'package:flutter/material.dart';
import './widgets/keep_alive.dart';
/**
 * demo5: 切换页面保持状态数据不变
 * 实现的效果是每个页面点击增加数目以后，切换页面保留数字
 */
void main() => runApp(Demo5());

class Demo5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keep Status Alive',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: KeepAliveDemo(),
    );
  }
}

class KeepAliveDemo extends StatefulWidget {
  @override
  _KeepAliveDemoState createState() => _KeepAliveDemoState();
}

// with ：混入类
class _KeepAliveDemoState extends State<KeepAliveDemo> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() { 
    super.initState();
    _controller = TabController(length: 3, vsync: this); // vsync：垂直
  }

  // 销毁方法
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Keep Alive Demo'),
      bottom: TabBar(
        controller: _controller,
        tabs: <Widget>[
          Tab(icon: Icon(Icons.directions_car),),
          Tab(icon: Icon(Icons.directions_bike),),
          Tab(icon: Icon(Icons.directions_subway),),
        ],
      ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          TabPage(),
          TabPage(),
          TabPage(),
        ],
      ),
    );
  }
}