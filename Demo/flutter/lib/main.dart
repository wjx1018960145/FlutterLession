import 'dart:core';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as image;
import 'res/listData.dart';
import 'res/listData1.dart';
import 'pages/tabs.dart';
import './routes/routes.dart';
// import '';
// import 'res';
void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // final 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      // home: Tabs(),
      // routes: {//命名路由
      //   '/from':(context)=>FromPage(),
      //   '/search':(context)=>SearchPage()
      // },
      onGenerateRoute: onGenerateRoute,
      );
  }
}

// 有动态的列表数据操作
class StateFulList extends StatefulWidget {
  StateFulList({Key key}) : super(key: key);

  @override
  _StateFulListState createState() => _StateFulListState();
}

class _StateFulListState extends State<StateFulList> {
  List list = new List();

  @override
  Widget build(BuildContext context) {
    return ListView(
         children: <Widget>[
          Column(
            children: this.list.map((value){
              return ListTile(
                title: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          RaisedButton(
            child: Text('按钮'), 
            onPressed: () {
              setState(() {
                this.list.add('新增数据1');
                this.list.add('新增数据2');
              });
            },
          )
         ],
       );
  }
}


//有动态数据操作
class StateFulHomePage extends StatefulWidget {
  StateFulHomePage({Key key}) : super(key: key);

  @override
  _StateFulHomePageState createState() => _StateFulHomePageState();
}

class _StateFulHomePageState extends State<StateFulHomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: Column(
         children: <Widget>[
           SizedBox(height: 100,),
           Chip(
             label: Text('${this.countNum}'),
             backgroundColor: Colors.blue
           ),
           RaisedButton(
             child: Text('按钮'), 
             onPressed: () {
               setState(() {
                 this.countNum++;
               });
                  
                  print(this.countNum);
             },
           )
         ],
       ),
       ),
    );
  }
}

//无状态的StatelessWidget 
class StatelessHomePage extends StatelessWidget {
   int countNum = 1;
  // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100,),
          Text('${this.countNum}'),
          SizedBox(height:20),
          RaisedButton(
            child: Text('按钮'),
            onPressed: (){
              this.countNum++;
              print(this.countNum);
            },
          )

        ],
      )
    );
  }
}
//wrap组件
class Wrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300,
      width: 400,
      color: Colors.blue,
      child: image.Wrap(
        spacing: 10,
        runSpacing: 10,
        // alignment: WrapAlignment.start,
        children: <Widget>[
          MyButton('老九门'),
          MyButton('盗墓笔记'),
          MyButton('沙海'),
          MyButton('云顶天空'),
          MyButton('张家鼓楼'),
          MyButton('海底墓'),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return image.RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}

//动态数据绑定卡片demo
class DynamicCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: listData1.map((value) {
        return image.Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              image.AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  value['imageUrl'],
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    value['imageUrl'],
                  ),
                ),
                title: Text(value['title']),
                subtitle: Text(
                  value['description'],
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}

//Card组件 demo

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        image.Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              image.AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                  ),
                ),
                title: Text('data'),
                subtitle: Text('data'),
              )
            ],
          ),
        ),
        image.Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              image.AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                  ),
                ),
                title: Text('data'),
                subtitle: Text('data'),
              )
            ],
          ),
        ),
        image.Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              image.AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                  ),
                ),
                title: Text('赵丽颖'),
                subtitle: Text('光大传媒'),
              )
            ],
          ),
        )
      ],
    );
  }
}

//卡片组件 card

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        image.Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '张三',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话:18237145079'),
              ),
              ListTile(
                title: Text('住址:撒奥大大大大大多'),
              )
            ],
          ),
        ),
        image.Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '李四',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话:18237145079'),
              ),
              ListTile(
                title: Text('住址:撒奥大大大大大多'),
              )
            ],
          ),
        ),
        image.Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  '王五',
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Text('高级工程师'),
              ),
              ListTile(
                title: Text('电话:18237145079'),
              ),
              ListTile(
                title: Text('住址:撒奥大大大大大多'),
              )
            ],
          ),
        )
      ],
    );
  }
}

//Aspectratio 组件

class AspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return image.AspectRatio(
      aspectRatio: 3.0 / 1.0,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

//Stack 配合Align组件堆叠
class StackAndAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: image.Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                Icons.menu,
                size: 20,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.menu,
                size: 20,
                color: Colors.white,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(
                Icons.menu,
                size: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Stack组件堆叠
class Stack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: image.Stack(
        alignment: Alignment(1, 1),
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text(
            '我是文本',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}

//Row Expanded 组合demo
class RowAndExpand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        image.Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text('你好'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        image.Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.network(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                flex: 1,
                child: Container(
                    height: 180,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          height: 85,
                          color: Colors.red,
                          child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 85,
                          color: Colors.black,
                          child: Image.network(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576043019964&di=005bcc3899acbc9f42b82a7ac22094ed&imgtype=0&src=http%3A%2F%2Fdingyue.nosdn.127.net%2FEGzTyVcNUBp9F2DZyP9wW0MHqhYde6QV4tUkA9Y4TXKXr1544184384383.jpg',
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    )))
          ],
        )
      ],
    );
  }
}

//Expanded 组件
class Expand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return image.Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.menu, color: Colors.red),
        ),
        Expanded(
          flex: 2,
          child: IconContainer(Icons.menu, color: Colors.yellow),
        )
      ],
    );
  }
}

//Row 组件
class Row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 600,
      width: 400,
      color: Colors.blue,
      child: image.Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconContainer(Icons.menu, color: Colors.red),
          IconContainer(Icons.menu, color: Colors.yellow),
          IconContainer(Icons.menu, color: Colors.black)
        ],
      ),
    );
  }
}

//自定义组件
class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.red;
  IconData icon;
  IconContainer(this.icon, {this.color, this.size});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Icon(
        this.icon,
        size: this.size,
        color: Colors.white,
      ),
    );
  }
}

//padding 组件
class Padding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return image.Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
          image.Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576042756880&di=70499fe425b650efa1d83110f85966e9&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ftranslate%2F20170522%2F-FGz-fyfkzhs8751009.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

//动态网格布局
class DynamicGridView extends StatelessWidget {
  Widget _getListData(content, index) {
    // List<Widget> list = new List();
    // for (var i = 0; i < 20; i++) {
    // var list = listData.map((value){

    return Container(
      child: Column(
        children: <Widget>[
          Image.network(listData[index]['imageUrl']),
          SizedBox(
            height: 10,
          ),
          Text(
            listData[index]['title'],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromRGBO(233, 233, 233, 1), width: 1)),
    );
    // });

    // return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10.0, mainAxisSpacing: 10.0, crossAxisCount: 2),
      itemBuilder: this._getListData,
    );
  }
}

//网格布局
class GridListView extends StatelessWidget {
  List<Widget> _getListData() {
    // List<Widget> list = new List();
    // for (var i = 0; i < 20; i++) {
    var list = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(value['imageUrl']),
            SizedBox(
              height: 10,
            ),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromRGBO(233, 233, 233, 1), width: 1)),
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      // childAspectRatio: 0.7,
      padding: EdgeInsets.all(10),
      children: this._getListData(),
    );
  }
}

//动态绑定listview
class ListViewBuilderContent extends StatelessWidget {
  // List list = new List();

  // ListViewBuilderContent(){
  // for(var i=0;i<20;i++){
  //     list.add('我是第$i 条数据');
  //   }
  // }
  Widget _getData(content, index) {
    return ListTile(
      title: Text(listData[index]['title']),
      leading: Image.network(listData[index]['imageUrl']),
      subtitle: Text(listData[index]['author']),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: this._getData,
    );
  }
}

//动态列表
class DynamicList extends StatelessWidget {
  //自定义方法
  List<Widget> _getData() {
    // List<Widget> list=new List();
    // for(var i=0;i<20;i++){
    //   list.add(ListTile(
    //       title: Text("我是$i列表"),
    //   ));
    // }
    var list = listData.map((value) {
      return ListTile(
        leading: Image.network(value["imageUrl"]),
        title: Text(value['title']),
        subtitle: Text(value['author']),
      );
    });
    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: this._getData(),
    );
  }
}
// 水平列表

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 180,
            height: 180,
            color: Colors.red,
            child: ListView(
              children: <Widget>[
                image.Image.network(
                    'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3136075639,3338708347&fm=26&gp=0.jpg'),
                Text('我是列表'),
                image.Image.network(
                    'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3136075639,3338708347&fm=26&gp=0.jpg'),
                image.Image.network(
                    'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3136075639,3338708347&fm=26&gp=0.jpg')
              ],
            ),
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.blue,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.green,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}

// //图片列表

class ListViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        image.Image.network(
            'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3136075639,3338708347&fm=26&gp=0.jpg'),
        Container(
          child: Text(
            '一号美女',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          height: 40,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        ),
        image.Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575891155529&di=0c8418241e4ffc68dea70204499e2565&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201504%2F14%2F20150414H2406_rKehA.jpeg'),
        Container(
          height: 10,
        ),
        image.Image.network(
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1575891155529&di=7f9b60a268877dbe3028b030b5740f0c&imgtype=0&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201811%2F20%2F20181120175233_grjue.jpg'),
        Container(
          height: 10,
        ),

        //  Image.network('')
      ],
    );
  }
}

// //图文列表
class ImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.blue,
            size: 40,
          ),
          title: Text(
            '中软控股',
            style: TextStyle(fontSize: 18),
          ),
          trailing:
              image.Image.network('http://coollinking.cn/img/tingchewei.png'),
          subtitle: Text('中软华腾'),
        ),
        ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.blue,
          ),
          title: Text('中软控股'),
          subtitle: Text('中软华腾'),
          trailing: Icon(Icons.mic),
        ),
        ListTile(
          leading: Icon(
            Icons.menu,
            color: Colors.blue,
          ),
          title: Text('中软控股'),
          subtitle: Text('中软华腾'),
        )
      ],
    );
  }
}

class BaseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        // Container(),
        ListTile(
          title: Text(
            '中软控股',
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text('中软华腾'),
        ),
        ListTile(
          title: Text('中软控股'),
          subtitle: Text('中软华腾'),
        ),
        ListTile(
          title: Text('中软控股'),
          subtitle: Text('中软华腾'),
        )
      ],
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      // child:Image.network('http://coollinking.cn/img/tingchewei.png',
      // // alignment: Alignment.bottomRight,
      // color: Colors.yellow,
      // colorBlendMode: BlendMode.screen,
      // fit: BoxFit.cover,
      // repeat: ImageRepeat.repeat,

      // ),
      // child: Text('我是详情请',
      // textAlign: TextAlign.right,
      // overflow: TextOverflow.ellipsis,
      // maxLines: 2,
      // style: TextStyle(color: Colors.red,
      // fontSize: 15.0,
      // fontWeight: FontWeight.bold,
      // fontStyle: FontStyle.italic,
      // decoration: TextDecoration.lineThrough,
      // decorationColor: Colors.pink,
      // decorationStyle: TextDecorationStyle.dashed
      // )
      // ),
      height: 300.0,
      width: 300.0,
      decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(
            color: Colors.blue,
            width: 2.0,
          ),
          // borderRadius: BorderRadius.all(
          //   Radius.circular(18)
          // )
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
              image: NetworkImage('http://coollinking.cn/img/tingchewei.png'),
              fit: BoxFit.cover)),
      padding: EdgeInsets.all(20), //内边距r
      // margin: EdgeInsets.all(10),//外边距
      // transform: Matrix4.translationValues(100, 0, 0),
      // transform: Matrix4.rotationZ(-0.3),//旋转
      // transform: Matrix4.skew(alpha, beta),//倾斜
      // alignment: Alignment.bottomLeft,
    ));
  }
}

// @override
// Widget build(BuildContext context) {
//   // TODO: implement build
//   return null;
// }
