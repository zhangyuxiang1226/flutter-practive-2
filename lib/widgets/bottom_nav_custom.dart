import 'package:flutter/material.dart';
import './each_view.dart';

class BottomNavCustomWidget extends StatefulWidget {
  @override
  _BottomNavCustomWidgetState createState() => _BottomNavCustomWidgetState();
}

class _BottomNavCustomWidgetState extends State<BottomNavCustomWidget> {
  // 初始化状态变量
  List<Widget> _eachView;
  int _index = 0;
  // 初始化状态方法
  @override
  void initState() {
    super.initState();
    _eachView = List();
    _eachView..add(EachView('Home'))..add(EachView('Album'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      // FAB 可交互浮动按钮
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 点击出现新路由
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView('New Page');
          }));
        },
        tooltip: 'Jim Zhang',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // BottomAppBar底部工具栏，自定义； demo1的 BottomNavigationBar是底部导航栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(), // 设置工具栏形状：圆形缺口
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: () {
                // 点击更新 _index -> 使body内容改变
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.album),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
