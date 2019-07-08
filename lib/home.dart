import 'package:flutter/material.dart';

class MyAppHome extends StatelessWidget {
  @override
  final List<String> items = [
    'demo1',
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Page'),
        ),
        body: Center(
          child: _buildRouters(context, items),
        ));
  }
}

Widget _buildRouters(context, items) {
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: items.length,
      itemBuilder: (context, i) {
        // if (i.isOdd) return Divider();
        return _buildRow(context, items[i]);
      });
}

Widget _buildRow(context, routerName) {
  final _biggerFont = const TextStyle(fontSize: 18.0);
  return ListTile(
    title: Text(
      routerName,
      style: _biggerFont,
    ),
    onTap: () {
      Navigator.pushNamed(context, '/' + routerName);
    },
    trailing: Icon(Icons.arrow_forward),
  );
}
