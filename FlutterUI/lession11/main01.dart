import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo')
        ),
        body: HomePage(),
      )
    );
  }
}

class HomePage extends StatelessWidget {
  int countNum=1; 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Text("${this.countNum}"),
        SizedBox(height: 20),
        RaisedButton(
          child: Text("按钮"),
          onPressed: (){
              // setState()   //错误写法       没法改变页面里面的数据
	      this.countNum++;
              print(this.countNum);
          },
        )
      ],
    );
  }
}


