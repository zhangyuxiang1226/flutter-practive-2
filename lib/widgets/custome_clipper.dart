import 'package:flutter/material.dart';

class CustomClippers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // 路径裁切控件
          ClipPath(
            // 自定义裁切类
            clipper: BottomClipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          ),
        ],
      ),
    );
  }
}

// 构造裁切器，需要四个点围出图形，这里控件区域高度设置为30，详见 images/bezier_clipper_area.jpg
class BottomClipper extends CustomClipper<Path> {
  @override

  Path getClip(Size size) {
    var path = Path();
    // 第一个点 左上角
    path.lineTo(0, 0); 
    // 第二个点 左下角
    path.lineTo(0, size.height - 30); 
    // 画曲线：贝塞尔曲线的控制点
    // 曲线第一个控制点，x取横向 1/2, y取控件高度 
    var firstControlPoint = Offset(size.width/2, size.height);
    // 曲线第一个结束点，右下角
    var firstEndPoint = Offset(size.width, size.height - 30);
    // 二次贝塞尔曲线
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);
    
    // 第三个点 右下角
    path.lineTo(size.width, size.height - 30);
    // 第四个点 右上角
    path.lineTo(size.width, 0);

    return path;
  }

  // 要求这里一个覆写
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}