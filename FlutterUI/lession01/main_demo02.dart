import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:Text(
        '你好Flutter 111',
        textDirection: TextDirection.ltr,

        style: TextStyle(
            fontSize: 40.0,
            color: Colors.yellow,
            // color: Color.fromRGBO(244, 233, 121, 0.5),
        ),
      )
    );
  }

}