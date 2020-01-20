import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,//必须配置tabbar的个数
      // child: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('AppBarPage'),
            backgroundColor: Colors.red,
            centerTitle: true,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   onPressed: (){
            //     print('menu');
            //   },
            // ),
            // actions: <Widget>[
            //   IconButton(
            //     icon: Icon(Icons.search),
            //     onPressed: () {
            //       print('search');
            //     },
            //   )
            // ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: '热门'),
                Tab(text: '推荐')
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('我是热门'),
                  ),
                  ListTile(
                    title: Text('我是热门'),
                  ),
                  ListTile(
                    title: Text('我是热门'),
                  )

                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('我是推荐'),
                  ),
                  ListTile(
                    title: Text('我是推荐'),
                  ),
                  ListTile(
                    title: Text('我是推荐'),
                  )

                ],
              )
            ],
          ),
        ),
      // ),
    );
  }
}
