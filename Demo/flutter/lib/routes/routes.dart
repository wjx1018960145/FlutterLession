import 'package:flutter/material.dart';
import '../pages/form.dart';
import '../pages/product.dart';
import '../pages/search.dart';
import '../pages/tabs.dart';
import '../pages/productinfo.dart';
import '../pages/user/Login.dart';
import '../pages/user/RegisterFirst.dart';
import '../pages/user/RegisterSecond.dart';
import '../pages/user/RegisterThird.dart';
import '../pages/appbar/appbar.dart';
import '../pages/appbar/tabBarController.dart';
import '../pages/user/user.dart';
import '../pages/buttonPage.dart';
import '../pages/fromPage.dart' as newFromPage; 
import '../pages/refresh.dart';
import '../pages/httprequestPage.dart';
import '../pages/preference.dart';
//配置路由
final routes = {
  //命名路由
        '/':(context,{arguments})=>Tabs(),
        '/from':(context)=>FromPage(),
        '/product':(context,{arguments})=>ProductPage(),
        '/productinfo':(context,{arguments})=>ProductInfo(arguments:arguments),
        '/search':(context,{arguments})=>SearchPage(arguments:arguments),
        '/login':(context)=>LoginPage(),
        '/registerFirst':(context)=>RegisterFirstPage(),
        '/registerSecond':(context)=>RegisterSecondPage(),
        '/registerThird':(context)=>RegisterThirdPage(),
        '/appbar':(context)=>AppBarPage(),
        '/tabBarController':(context)=>TabBarController(),
        '/user':(context)=>UserPage(),
        '/buttonPage':(context)=>ButtonPage(),
        '/fromPage':(context)=>newFromPage.FromPage(),
        '/refresh':(context)=>Refresh_page(),
        '/http':(context)=>HttpPage(),
        '/preferen':(context)=>Preference()
      };

//固定写法
var onGenerateRoute = (RouteSettings settings){
         final String name = settings.name;
          final Function pageContentBuilder = routes[name];
          if (pageContentBuilder != null) {
            if (settings.arguments != null) {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context,
                      arguments: settings.arguments));
              return route;
            } else {
              final Route route = MaterialPageRoute(
                  builder: (context) => pageContentBuilder(context));
              return route;
            }
            }
};