import 'package:flutter/material.dart';

class FromPage extends StatefulWidget {
  FromPage({Key key}) : super(key: key);

  @override
  _FromPageState createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         floatingActionButton: FloatingActionButton(
           child: Text('返回'),
           onPressed: (){
             Navigator.of(context).pop();
           },
         ),
         appBar: AppBar(
          title: Text('我是from'),
          // textTheme: AppBarTheme.of(context).actionsIconTheme,
         ),
         body: ListView(
           children: <Widget>[
             ListTile(
               title: Text('我是列表'),
             ),
             ListTile(
               title: Text('我是列表'),
             )
           ],
         ),
       ),
       
    );
  }
}