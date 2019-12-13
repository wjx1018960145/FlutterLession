import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('FlutterDemo')),
          body: HomeContent(),
     ));
  }
}
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[

          ListTile(
              title: Text(
                '华北黄淮高温持续 南方强降雨今起强势登场',
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('中国13家运营波音737MAX航空公司均已提出索赔场',
                style: TextStyle(
                  fontSize: 24
                ),),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华中国13家运营波音737MAX航空公司均已提出索赔登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温持续 势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          ),
           ListTile(
              title: Text('华北黄淮高温持续 南方强降雨今起强势登场'),
              subtitle: Text("中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段"),
          )

      ],
    );
  }
}
