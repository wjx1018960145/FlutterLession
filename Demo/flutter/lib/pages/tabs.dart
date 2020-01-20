import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'tabs/home.dart';
import 'tabs/category.dart';
import 'tabs/setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [HomePage(), CategoryPage(), SettingPage()];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('这是详情'),
        ),
        floatingActionButton: Container(
          height: 80,
          width: 80,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: Colors.white),
          // color: Colors.red,
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                this._currentIndex = 1;
              });
            },
            backgroundColor:
                this._currentIndex == 1 ? Colors.red : Colors.yellow,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
            print(index);
          },
          currentIndex: this._currentIndex, //配置索引值选中
          iconSize: 36, //icon大小
          fixedColor: Colors.red, //选择颜色
          type: BottomNavigationBarType.fixed, //配置底部item 有多个按钮
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('设置')),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                    child: UserAccountsDrawerHeader(
                  accountName: Text('赵丽颖'),
                  accountEmail: Text('10011@qq.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2226190985,1365245624&fm=26&gp=0.jpg'),
                  ),
                  otherAccountsPictures: <Widget>[
                    Image.network(
                        'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2226190985,1365245624&fm=26&gp=0.jpg')
                  ],
                )

                    //  DrawerHeader(
                    //   child: Text('你好我是头'),
                    //   decoration: BoxDecoration(
                    //     color: Colors.yellow,
                    //     image: DecorationImage(
                    //       image: NetworkImage('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2226190985,1365245624&fm=26&gp=0.jpg'),
                    //       fit: BoxFit.cover
                    //     )
                    //   ),
                    // ),
                    )
                // Expanded(
                //   child: DrawerHeader(
                //     child: Text('你好我是头'),
                //   ),
                // ),
              ]),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text('个人中心'),
                onTap: () {
                  prefix0.Navigator.of(context).pop(); //隐藏侧边栏
                  Navigator.pushNamed(context, '/user');
                },
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.menu),
                ),
                title: Text('我的首页'),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.money_off),
                ),
                title: Text('我的钱包'),
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text('我是右侧'),
        ),
      ),
    );
    // );
  }
}
