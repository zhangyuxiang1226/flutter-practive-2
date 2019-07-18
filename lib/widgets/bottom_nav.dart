import 'package:flutter/material.dart';
import '../pages/home_screen.dart';
import '../pages/email_screen.dart';
import '../pages/pages_screen.dart';
import '../pages/airplay_screen.dart';

class BottomNavWidget extends StatefulWidget {
  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  final _BottomNavColor = Colors.blueAccent;

  // 定义变量
  int _currentIndex = 0;
  List<Widget> pageList = List();
  // 重写初始化状态方法
  @override
  void initState() {
    // 把各页面组件加入到数组中
    pageList
      ..add(HomeScreen()) // ..add 建造组模式
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(AirplayScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: _BottomNavColor,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(color: _BottomNavColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.email,
                  color: _BottomNavColor,
                ),
                title: Text(
                  'Email',
                  style: TextStyle(color: _BottomNavColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.pages,
                  color: _BottomNavColor,
                ),
                title: Text(
                  'Pages',
                  style: TextStyle(color: _BottomNavColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplay,
                  color: _BottomNavColor,
                ),
                title: Text(
                  'Airplay',
                  style: TextStyle(color: _BottomNavColor),
                )),
          ],
          // 高亮
          currentIndex: _currentIndex,
          // 切换点击
          onTap: (int index){
            // 设置状态
            setState(() {
              // 切换当前导航索引，参数index是flutter传入的
              _currentIndex = index;
            });
          },
        ));
  }
}
