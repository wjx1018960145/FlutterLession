import 'package:flutter/material.dart';

import 'package:flutter01/pages/tabs.dart';

import '../tabs.dart';
class RegisterThirdPage extends StatelessWidget {
  const RegisterThirdPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册")
      ),body:Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text("输入密码完成注册"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text('确定'),
            onPressed: (){
             Navigator.of(context).pushAndRemoveUntil(new MaterialPageRoute(builder: (context) => new Tabs(index: 2)),(route) => route == null);
                // Navigator.of(context).pop();
            },
          )
        ],
      )
    );
  }
}