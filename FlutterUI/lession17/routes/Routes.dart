import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/AppBarDemo.dart';

import '../pages/TabBarController.dart';


//配置路由
final routes={
      '/':(context)=>Tabs(),
      '/appBarDemo':(context)=>AppBarDemoPage(),   
      '/tabBarController':(context)=>TabBarControllerPage(),     
      
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};