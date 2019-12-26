import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RaisedButton(
              child: Text('点击跳转到按钮演示页面'),
              onPressed: (){
                  Navigator.pushNamed(context, '/buttonPage');
              },
            )
        ]
      ),
    );
  }
}
