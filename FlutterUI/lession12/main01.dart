import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: Text("tabBar"),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            ),
            
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            )
          ],
        ),
      )
    );
  }
}
