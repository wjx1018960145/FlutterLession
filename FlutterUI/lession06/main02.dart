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


  List<Widget> _getListData() {
      List<Widget> list = new List();

      for (var i = 0; i < 20; i++) {
        list.add(Container(
          alignment: Alignment.center,
          child: Text(
            '这是第$i条数据',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          color: Colors.blue,        
          // height: 400,  //设置高度没有反应
        ));
      }
      return list;
  }


  @override
  Widget build(BuildContext context) {    
    return GridView.count(
        crossAxisSpacing:20.0 ,   //水平子 Widget 之间间距
        mainAxisSpacing: 20.0,    //垂直子 Widget 之间间距
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,  //一行的 Widget 数量
        childAspectRatio:0.7,  //宽度和高度的比例
        children: this._getListData(),
    );
  }
}
