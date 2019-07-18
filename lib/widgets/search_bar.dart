import 'package:flutter/material.dart';
import '../mockData/search_bar_data.dart';

class MySearchBar extends StatefulWidget {
  @override
  _MySearchBarState createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('点右侧进入搜索状态'),
        // AppBar的右侧按钮，这写一个搜索按钮
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // 弹出搜索界面
              showSearch(
                context: context,
                delegate: SearchBarDelegate(),
              );
            },
          )
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String> {
  // 覆写一个搜索栏的清空按钮
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => query = '',
      )
    ];
  }

  // 覆写返回按钮
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      // 带动画的Icon
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  // 覆写一个结果列表
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ), // 查询结果展示在这里
      ),
    );
  }

  // 覆写一个搜索实时推荐列表
  @override
  Widget buildSuggestions(BuildContext context) {
    // 判断查询是否为空，为空的话展示历史，有输入的话则匹配查询结果（通过where匹配，匹配完了转成List）
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) => ListTile(
        title: RichText(
            text: TextSpan(
                // 截取出搜索关键字高亮
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
              // 其余文字灰色
              TextSpan(
                  text: suggestionList[index].substring(query.length),
                  style: TextStyle(color: Colors.grey))
            ])),
      ),
    );
  }
}
