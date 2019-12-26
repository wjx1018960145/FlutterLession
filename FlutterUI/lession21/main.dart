import 'package:flutter/material.dart';



import 'routes/Routes.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,  //去掉debug图标
      // home:Tabs(),   
      initialRoute: '/checkBox',     //初始化的时候加载的路由
      onGenerateRoute: onGenerateRoute,
    );
  }
}
