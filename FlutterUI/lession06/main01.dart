import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('FlutterDemo')),
        body: LayoutDemo(),
      ));
  }
}
class LayoutDemo extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {    
    return GridView.count(

        crossAxisCount: 2,  //一行的 Widget 数量
        children: <Widget>[
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本'),
          Text('这是一个文本')
        ],
    );
  }
}
