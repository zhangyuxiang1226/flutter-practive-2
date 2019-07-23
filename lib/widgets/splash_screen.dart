import 'package:flutter/material.dart';
import '../pages/demo11_home_page.dart';

/**
 * Demo11使用：闪屏控件
 */
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // 动画控制器
  AnimationController _controller;
  // 动画
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    // 监听动画结束事件 - 跳转到页面
    _animation.addStatusListener((state) {
      if (state == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Demo11HomePage()),
            (route) => route == null);
      }
    });

    // 动画播放
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset(
        'images/jay.jpg',
        scale: 2.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
