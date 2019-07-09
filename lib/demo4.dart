import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'dart:ui'; // 使用其中的过滤器

/**
 * demo4: 毛玻璃效果
 */
void main() => runApp(Demo4());

class Demo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frosted Class',
      theme: ThemeData.light(),
      home: FrostedGlass(),
    );
  }
}

class FrostedGlass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 约束性盒子，添加额外的约束的条件到child上
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                'https://pic4.zhimg.com/50/v2-45bb8099b5ac095f3b4e674018bc0676_400x224.png'),
          ),
          Center(
            // ClipRect：可裁切的矩形
            child: ClipRect(
              // 使用背景过滤器
              child: BackdropFilter(
                // 配置图片过滤器
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                // 下方还要放一个透明度过滤
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    // box修饰器，
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text('Jim', style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
