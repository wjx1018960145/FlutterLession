import 'package:flutter/material.dart';

import 'res/listData.dart';

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
  Widget _getListData(context,index){
        return ListTile(           
            title: Text(listData[index]["title"]),
            leading:Image.network(listData[index]["imageUrl"]),          
            subtitle:Text(listData[index]["author"])
        );
  }

  @override
  Widget build(BuildContext context) {    
    // TODO: implement build
    return ListView.builder(
        itemCount:listData.length,
        itemBuilder:this._getListData
    );
  }
}
