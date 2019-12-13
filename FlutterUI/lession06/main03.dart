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
        body: LayoutDemo(),
      ));
  }
}
class LayoutDemo extends StatelessWidget {  


  List<Widget> _getListData() {
      var tempList=listData.map((value){
          return Container(            
            child:Column(
                children: <Widget>[
                  Image.network(value['imageUrl']),
                  SizedBox(height: 12),
                  Text(
                    value['title'],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20
                    ),
                  )
                ],

            ),
            decoration: BoxDecoration(

              border: Border.all(
                color:Color.fromRGBO(233, 233,233, 0.9),
                width: 1
              )
            ),
              
            // height: 400,  //设置高度没有反应
          );

      });
      // ('xxx','xxx')
      return tempList.toList();
  }


  @override
  Widget build(BuildContext context) {    
    return GridView.count(
        crossAxisSpacing:10.0 ,   //水平子 Widget 之间间距
        mainAxisSpacing: 10.0,    //垂直子 Widget 之间间距
        padding: EdgeInsets.all(10),
        crossAxisCount: 2,  //一行的 Widget 数量
        // childAspectRatio:0.7,  //宽度和高度的比例
        children: this._getListData(),
    );
  }
}
