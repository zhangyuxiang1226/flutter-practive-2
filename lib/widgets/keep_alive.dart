import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

// 通过withAutomaticKeepAliveClientMixin 和 重写wantKeepAlive  实现不重新构建的效果
class _TabPageState extends State<TabPage> with AutomaticKeepAliveClientMixin {
  // 写一个计数器
  int _counter = 0;
  // 重写保持默认状态
  @override
  bool get wantKeepAlive => true; // 这里定义一个方法

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点一下+1'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '加1',
        child: Icon(Icons.add),
      ),
    );
  }
}
