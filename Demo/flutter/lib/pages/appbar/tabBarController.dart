import 'package:flutter/material.dart';

class TabBarController extends StatefulWidget {
  TabBarController({Key key}) : super(key: key);

  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> with SingleTickerProviderStateMixin {
 
 TabController _tabController;

  @override
  void dispose() { //生命周期函数
    // TODO: implement dispose
    super.dispose();
  _tabController.dispose();//销毁
  }
 @override
  void initState() {//生命周期函数
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(
      vsync:this,
      length:2
    );

    _tabController.addListener((){

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('TabBarController'),
           bottom: TabBar(
             controller: this._tabController,
             tabs: <Widget>[
               Tab(text: '热门',),
               Tab(text: '推荐',)
             ],
           ),
         ),
         body: TabBarView(
           controller: this._tabController,
           children: <Widget>[
             Center(
               child: Text('热门'),
             ),
             Center(child: Text('推荐'),)
           ],
         ),
       ),
    );
  }
}