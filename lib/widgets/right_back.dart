import 'package:flutter/cupertino.dart'; // 这里使用 cupertino

/**
 * Demo12 右滑返回操作
 */

class RightBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.activeOrange,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context).push(
                CupertinoPageRoute(
                  builder: (BuildContext context) {
                    return RightBack();
                  }
                )
              );
            },
          ),
        ),
      ),
    );
  }
}
