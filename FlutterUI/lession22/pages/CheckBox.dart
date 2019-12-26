import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {

  var flag=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("checkbox"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Row(children: <Widget>[
              Checkbox(
                value: this.flag,
                onChanged: (v){
                  setState(() {
                     this.flag=v;
                  });
                },
                activeColor: Colors.red,
              )
            ]),
            Row(
              children: <Widget>[
                Text(this.flag?"选中":"未选中")
              ],
            ),
            SizedBox(height: 40),

            // CheckboxListTile(
            //    value: this.flag,
            //     onChanged: (v){
            //       setState(() {
            //          this.flag=v;
            //       });
            //     },
            //     title: Text("标题"),
            //     subtitle:Text("这是二级标题") ,
            // ),
            Divider(),
            CheckboxListTile(
               value: this.flag,
                onChanged: (v){
                  setState(() {
                     this.flag=v;
                  });
                },
                title: Text("标题"),
                subtitle:Text("这是二级标题") ,
                secondary:Icon(Icons.help),
                selected: this.flag,
            )

          ],
        ),
      
    );
  }
}
