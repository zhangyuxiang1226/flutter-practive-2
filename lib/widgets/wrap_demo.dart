import 'package:flutter/material.dart';

/**
 * 用于demo7
 */
class WrapDemo extends StatefulWidget {
  @override
  _WrapDemoState createState() => _WrapDemoState();
}

class _WrapDemoState extends State<WrapDemo> {
  List<Widget> myList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myList = List<Widget>()..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    // 得到屏幕的宽高
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text('Wrap流式布局'),
        ),
        body: Center(
          child: Opacity(
            opacity: 0.8,
            child: Container(
              width: width,
              height: height / 2,
              color: Colors.grey,
              child: Wrap(
                children: myList,
                spacing: 6.0,
              ),
            ),
          ),
        ));
  }

// 添加按钮
  Widget buildAddButton() {
    // 手势识别
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
      onTap: () {
        // 点击时：数组长度小于9的时候，往里加一个
        if (myList.length < 9) {
          // list.insert(index, element)
          setState(() {
            myList.insert(myList.length - 1, buildPhoto());
          });
        }
      },
    );
  }

  Widget buildPhoto() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 80.0,
        height: 80.0,
        child: Center(
          child: Text('照片'),
        ),
        color: Colors.blueAccent,
      ),
    );
  }
}
