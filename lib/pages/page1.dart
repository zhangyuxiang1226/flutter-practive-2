import 'package:flutter/material.dart';
import '../widgets/custom_route_anime.dart'; // 引入自定义route动画
/**
 * 用于demo3
 */
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(
          'First Page',
          style: TextStyle(fontSize: 30.0),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0.0, // 融合度 0.0就没有阴影了
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_next, color: Colors.white, size: 64.0),
          onPressed: () {
            Navigator.of(context)
                .push(CustomRoute(SecondPage()));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: TextStyle(fontSize: 30.0),
        ),
        elevation: 0.0, // 融合度
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
      ),
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: MaterialButton(
          child: Icon(Icons.navigate_before, color: Colors.white, size: 64.0),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
