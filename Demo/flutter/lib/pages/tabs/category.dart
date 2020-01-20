import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.red,
                  labelColor: Colors.red,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(
                      text: '第一',
                    ),
                    Tab(
                      text: '第二',
                    ),
                    Tab(
                      text: '第三',
                    ),
                    Tab(
                      text: '第四',
                    ),
                     Tab(
                      text: '第五',
                    ),
                    Tab(
                      text: '第六',
                    ),
                     Tab(
                      text: '第七',
                    ),
                     Tab(
                      text: '第八',
                    )
                  ],
                ),
              )
            ],
          ),
          // bottom: ,
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
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是视频'),
                ),
                ListTile(
                  title: Text('我是视频'),
                ),
                ListTile(
                  title: Text('我是视频'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                ),
                ListTile(
                  title: Text('我是科技'),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
