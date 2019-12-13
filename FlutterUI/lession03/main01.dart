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
    return Center(
      child: Container(
        child: Image.network(
          "http://www.ionic.wang/statics/index/images/ionic4.png",

          // alignment: Alignment.bottomRight,

          // color: Colors.blue,
          // colorBlendMode: BlendMode.screen,

          // fit:BoxFit.cover,
          // repeat:ImageRepeat.repeat



          
        ),
        width: 300,
        height: 800,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),

      )
    );
  }
}
