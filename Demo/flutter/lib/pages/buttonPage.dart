import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('按钮演示'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              iconSize: 40,
              onPressed: (){

              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add,color: Colors.black,size: 40,),
          onPressed: (){
            print('FloatingActionButton');
          },
          backgroundColor: Colors.yellow,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('普通按钮'),
                  // color: Colors.blue,
                  // textColor: Colors.white,
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  child: Text('有颜色按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  child: Text('有阴影按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 35,
                  width: 200,
                  child: RaisedButton(
                    child: Text('设置按钮宽度高度'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    onPressed: () {
                      print('普通按钮');
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton.icon(
                  label: Text('图片按钮'),
                  icon: Icon(Icons.menu),
                  color: Colors.blue,
                  textColor: Colors.white,
                  // elevation: 20,
                  onPressed: () {
                    print('图片按钮');
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 45,
                    // width: 200,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      child: Text('自适应按钮'),
                      color: Colors.blue,
                      textColor: Colors.white,
                      // elevation: 20,
                      onPressed: () {
                        print('普通按钮');
                      },
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('圆角按钮'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // color: Colors.blue,
                  // textColor: Colors.white,
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 80,
                  child: RaisedButton(
                    child: Text('圆形按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.blueGrey,
                    shape: CircleBorder(side: BorderSide(color: Colors.blue)),
                    onPressed: () {
                      print('圆形按钮');
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton(
                  child: Text('扁平化按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  // elevation: 20,
                  onPressed: () {
                    print('扁平化按钮');
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  child: Text('线框按钮'),
                  // color: Colors.blue, 么有效果
                  textColor: Colors.blue,
                  // elevation: 20,
                  onPressed: () {
                    print('线框按钮');
                  },
                ),

                
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child:Container(
                    margin: EdgeInsets.all(10),
                  height: 45,
                  child: OutlineButton(
                    child: Text('登录'),
                    color: Colors.blue,
                    textColor: Colors.blue,
                    onPressed: (){

                    },
                  )
                ) ,
                )
                  
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonBar(
                  children: <Widget>[
                    RaisedButton(
                  child: Text('登录'),
                  // color: Colors.blue,
                  // textColor: Colors.white,
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  child: Text('注册'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                MyButton(text:'自定义',height:45.0,width:100.0,pressed: (){
                    print('自定义按钮');
                },)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {

final text;
final  height;
final  width;
final pressed;
  const MyButton({this.text='',this.height=45.0,this.width=100.0,this.pressed=null}) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: this.height,
        width: this.width,
        child: RaisedButton(
            child: Text(this.text),
            onPressed: this.pressed,
        ),
      ),
    );
  }
}
