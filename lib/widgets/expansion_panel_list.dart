import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  @override
  _ExpansionPanelListDemoState createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  // 数据列表
  List<int> myList;
  // 展开状态列表
  List<ExpandStateBean> expandStateList;

  _ExpansionPanelListDemoState() {
    // 初始化一下数组
    myList = new List();
    expandStateList = new List();
    // 分别添加10个元素
    for (int i = 0; i < 10; i++) {
      myList.add(i);
      // 控制状态的列表默认全都false(收起状态)
      expandStateList.add(ExpandStateBean(i, false));
    }
  }

  // 内部方法：设置当前项目的闭合收起
  _setCurrentIndex(int index, isExpand) {
    setState(() {
      expandStateList[index].isOpen = !expandStateList[index].isOpen;
      // expandStateList.forEach((item) {
      //   if (item.index == index) {
      //     item.isOpen = !isExpand;
      //   }
      // });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Panel Widget'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          // 打开闭合回调，打开闭合后设置 expandStateList 对应的闭合状态
          expansionCallback: (index, isDefaultOpen) {
            _setCurrentIndex(index, isDefaultOpen);
          },
          children: myList.map((index) {
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text('This is No.$index'),
                );
              },
              body: ListTile(
                title: Text('expansion no.$index'),
              ),
              isExpanded: expandStateList[index].isOpen,
            );
          }).toList(), // 遍历完再转回list
        ),
      ),
    );
  }
}

// 自定义类 表达打开收起的状态
class ExpandStateBean {
  var isOpen;
  var index;
  // 构造方法
  ExpandStateBean(this.index, this.isOpen);
}
