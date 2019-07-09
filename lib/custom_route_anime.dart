import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * 用于demo3，继承自PageRouteBuilder
 */
class CustomRoute extends PageRouteBuilder {
  final Widget widget;
  // 构造方法，参数是传入一个组件，这里就是传入SecondPage
  CustomRoute(this.widget)
      : super(
            // 过渡时间
            transitionDuration: Duration(seconds: 1),
            // 页面构造器 3个参数
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return widget;
            },
            // ※ 重点：渐变构造器，4个参数 ※
            transitionsBuilder: (
              BuildContext context, // 上下文
              Animation<double> animation1, // 动画方法1
              Animation<double> animation2, // 动画方法2
              Widget child, // 传入子文件
            ) {
              // 实现 渐隐渐现
              // return FadeTransition(
              //     opacity: Tween(begin: 0.0, end: 1.0)
              //         // 动画曲线
              //         .animate(CurvedAnimation(
              //             parent: animation1, // 动画
              //             curve: Curves.fastOutSlowIn // 动画曲线
              //             )
              //     ),
              //     child: child,
              //   );

              // 缩放效果
              // return ScaleTransition(
              //   scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              //   child: child,
              // );

              // 旋转加缩放效果
              // return RotationTransition(
              //   turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //       parent: animation1, curve: Curves.fastOutSlowIn)),
              //   child: ScaleTransition(
              //     scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //         parent: animation1, curve: Curves.fastOutSlowIn)),
              //     child: child,
              //   ),
              // );

              // 最常用的左右滑动效果
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, 0.0),
                  end: Offset(0.0, 0.0),
                ).animate(CurvedAnimation(parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
