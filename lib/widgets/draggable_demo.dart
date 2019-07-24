import 'package:flutter/material.dart';
import 'package:flutter2/widgets/draggable_widget.dart';

/**
 * Demo14 拖拽控件，实现效果，拖拽哪个到大区域中，大区域变成什么颜色
 */
class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset: Offset(80.0, 80.0),
            widgetColor: Colors.tealAccent,
          ),
          DraggableWidget(
            offset: Offset(180.0, 80.0),
            widgetColor: Colors.redAccent,
          ),
          Center(
            // 拖拽接收器
            child: DragTarget(
              // 接收回调，传入颜色
              onAccept: (Color color) {
                _draggableColor = color;
              },
              builder: (context, candidateData, rejectedData) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: _draggableColor, // 来源于Draggable控件的data
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
