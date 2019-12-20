
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Container(
          
      child:Column(
        children: <Widget>[
          Chip(
            label: Text("${this.count}")           
          ),
          RaisedButton(
            child: Text('增加'),
            onPressed: (){             
              // print(this.count);
              setState(() {
                 this.count++;
              });
            },
          )          
        ],
      )
    );
  }
}
