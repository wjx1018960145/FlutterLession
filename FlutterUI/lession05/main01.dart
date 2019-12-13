import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: HomeContent(),
    ));
  }
}
class HomeContent extends StatelessWidget {  


  //自定义方法

  List<Widget> _getData(){
    return [
        ListTile(
          title: Text("我是一个列表"),
        ),
         ListTile(
          title: Text("我是一个列表"),
        ),
         ListTile(
          title: Text("我是一个列表"),
        )
      ];
  }

  @override
  Widget build(BuildContext context) {    
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}
