import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/**
 * Demo15 webview
 */
void main() => runApp(Demo15());

class Demo15 extends StatefulWidget {
  String url;
  final String title;

  Demo15({this.url = 'https://www.baidu.com', this.title = '1222'});

  @override
  _WebViewState createState() => _WebViewState();
}

class _WebViewState extends State<Demo15> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          new WebView(
            initialUrl: widget.url, // 加载的url
            onWebViewCreated: (WebViewController web) {
              // webview 创建调用， web.loadUrl(url);此时也可以初始化一个url
              web.canGoBack().then((res) {
                print(res); // 是否能返回上一级
              });
              web.currentUrl().then((url) {
                print(url); // 返回当前url
              });
              web.canGoForward().then((res) {
                print(res); //是否能前进
              });
            },
            onPageFinished: (String value) {
              // webview 页面加载调用
            },
          )
        ],
      ),
    );
  }
}
