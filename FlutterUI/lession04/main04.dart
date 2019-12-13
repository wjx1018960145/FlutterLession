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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
          Image.network("https://www.itying.com/images/flutter/1.png"),

          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/2.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/3.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/4.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/1.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/2.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/3.png"),
          Container(
            child: Text(
                '我是一个标题',
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 28,
                ),            
            ),
            height: 60,
            padding:EdgeInsets.fromLTRB(0, 10, 0, 10),
          ),

          Image.network("https://www.itying.com/images/flutter/1.png"),
          Image.network("https://www.itying.com/images/flutter/2.png"),
          Image.network("https://www.itying.com/images/flutter/3.png"),

      ],
    );
  }
}
