import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Preference extends StatefulWidget {
  Preference({Key key}) : super(key: key);

  @override
  _PreferenceState createState() => _PreferenceState();
}

class _PreferenceState extends State<Preference> {

var count;

  
  
  savrPref()async{
    //首先安装第三方插件   
    /**
     * 
     * dependencies:
          *shared_preferences: ^0.4.2

          引入 import 'package:shared_preferences/shared_preferences.dart';
     */

    //获取实例
  var pref = await SharedPreferences.getInstance();

   // 获取存储数据

   count = pref.getInt('count') ?? 0 + 1;
   setState(() {
     count = pref.getInt('count') ?? 0 + 1;
   });

  // 设置存储数据
    await pref.setInt('count', count);
    /*
    get/setInt(key) - 查询或设置整型键。
    get/setBool(key) - 查询或设置布尔键。
    get/setDouble(key) - 查询或设置浮点键。
    get/setString(key) - 查询或设置字符串键。
    get/setStringList(key) - 查询或设置字符串列表键。
    getKeys() - 获取所有键值名。
    remove(key) - 删除某个键内容。
    clear() - 清除全部内容。

    */
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savrPref();
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('本地持久化'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        alignment: Alignment.center,
       child: Text('$count'),
    ),
    ) ;
  }
}