import 'package:flutter/material.dart';

/**
 * Demo14 拖拽控件的子控件
 */
class DraggableWidget extends StatefulWidget {
  // 接受两个变量
  final Offset offset;
  final Color widgetColor;
  const DraggableWidget({Key key, this.offset, this.widgetColor}):super(key: key);  
  
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();

    // 拿到传进来的offset
    offset = widget.offset;
  }
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,

      // 拖动控件
      child: Draggable(
        // 数据接收器
        data: widget.widgetColor, // 把颜色传给接收器
        // 子组件
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor,
        ),
        // 拖拽时，构造一个控件（即跟随走的一个块）
        feedback: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widgetColor.withOpacity(0.5),// 让容器在原有颜色变半透明
        ),

        // 放开拖拽回调
        onDraggableCanceled: (Velocity velocity, Offset offset) {
          setState(() {
            // offset重新赋值，等号右边是新的offet
            this.offset = offset;
          });
        },

      ),
    );
  }
}