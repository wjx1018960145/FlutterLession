import 'package:flutter/material.dart';



import 'routes/Routes.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:Tabs(),   
      initialRoute: '/',     //初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute
     
    );
  }
}
