import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
        appBar: AppBar(title: Text('FlutterDemo')),
        body: LayoutDemo(),
      ));
  }
}
class LayoutDemo extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[

        Card(
          margin: EdgeInsets.all(10),
          child:Column(
              children: <Widget>[
                  AspectRatio(
                    aspectRatio: 20/9,
                    child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,),
                  ),
                  ListTile(
                    leading: ClipOval(
                      child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,height:60,width: 60),
                    ),
                    title: Text("xxxx"),
                    subtitle: Text("xxxxxxx"),
                    
                  )

              ],
          ),

        ),
         Card(
          margin: EdgeInsets.all(10),
          child:Column(
              children: <Widget>[
                  AspectRatio(
                    aspectRatio: 20/9,
                    child: Image.network("https://www.itying.com/images/flutter/3.png",fit: BoxFit.cover,),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage:NetworkImage('https://www.itying.com/images/flutter/3.png')
                    ),
                    title: Text("xxxxxxxx"),
                    subtitle: Text("xxxxxxxxxx"),
                    
                  )
              ],
          ),

        )
      ],
    );
  }
}