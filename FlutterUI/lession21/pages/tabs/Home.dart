import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RaisedButton(
              child: Text('按钮演示页面'),
              onPressed: (){
                  Navigator.pushNamed(context, '/buttonPage');
              },
            ),
            SizedBox(width: 20),
            RaisedButton(
              child: Text('表单演示页面'),
              onPressed: (){
                  Navigator.pushNamed(context, '/textField');
              },
            ),
            SizedBox(width: 20),
            RaisedButton(
              child: Text('CheckBox'),
              onPressed: (){
                  Navigator.pushNamed(context, '/checkBox');
              },
            ),
            RaisedButton(
              child: Text('RadioDemo'),
              onPressed: (){
                  Navigator.pushNamed(context, '/radio');
              },
            )
        ]
      ),
    );
  }
}
