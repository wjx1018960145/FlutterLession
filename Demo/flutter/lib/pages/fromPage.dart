import 'package:flutter/material.dart';

class FromPage extends StatefulWidget {
  FromPage({Key key}) : super(key: key);

  @override
  _FromPageState createState() => _FromPageState();
}

class _FromPageState extends State<FromPage> {
  var _username = new TextEditingController(); //初始化给表单赋值
  String _pwd;
  var flag = true;
  int sex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _username.text = "初始化值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FromPage'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(hintText: '请输入账号'),
                controller: this._username,
                onChanged: (value) {
                  setState(() {
                    _username.text = value;
                  });

                  // print(value);
                },
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: '密码'),
                onChanged: (value) {
                  setState(() {
                    _pwd = value;
                  });
                },
                // controller: _pwd,
              ),
              SizedBox(
                height: 20,
              ),
              RaisedButton(
                child: Text('登录'),
                onPressed: () {
                  print(this._username);
                  print(this._pwd);
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: this.flag,
                    onChanged: (v) {
                      setState(() {
                        flag = v;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[Text(this.flag ? "选择" : "未选择")],
              ),
              CheckboxListTile(
                    value: this.flag,
                    
                    onChanged: (v) {
                      setState(() {
                        flag = v;
                      });
                    },
                    title: Text('选择'),
                    subtitle: Text('选择2'),
                  ),
                  Divider(),
                  CheckboxListTile(
                    value: this.flag,
                    
                    onChanged: (v) {
                      setState(() {
                        flag = v;
                      });
                    },
                    title: Text('选择'),
                    subtitle: Text('选择2'),
                    secondary: Icon(Icons.menu),
                  ),
                  Row(
                    children: <Widget>[
                      Text('男:'),
                      Radio(
                        value: 1,
                        onChanged: (v){
                          setState(() {
                            sex = v;
                          });
                          
                        },
                        groupValue: this.sex,
                      ),
                      Text('女:'),
                      Radio(
                        value: 2,
                        onChanged: (v){
                          setState(() {
                            sex = v;
                          });
                        },
                        groupValue: this.sex,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('${this.sex}'),
                      Text(this.sex==1?"男":"女")
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      // RadioListTile(
                      //   value: 3,
                      //   onChanged: (v){
                      //     setState(() {
                      //       sex = v;
                      //     });
                      //   },
                      //   groupValue: this.sex,
                      //   title: Text('性别'),
                      // ),
                      // RadioListTile(
                      //   value: 4,
                      //   onChanged: (v){
                      //     setState(() {
                      //       sex = v;
                      //     });
                      //   },
                      //   groupValue: this.sex,
                      //   title: Text('性别'),
                      // )

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      
                    ],
                  )
            ],
          ),
        )); //TextDemo();
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      //  child: Scaffold(

      //    body: Padding(
      //      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          TextField(
              //普通的输入框
              ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                hintText: "请输入账号", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            maxLines: 4, //多行文本框
            decoration: InputDecoration(
                hintText: "请输入账号", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            //  maxLines: 4,//多行文本框
            decoration: InputDecoration(
                hintText: "请输入密码", border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            //  obscureText: true,
            //  maxLines: 4,//多行文本框
            decoration: InputDecoration(
                //  hintText: "请输入密码",
                border: OutlineInputBorder(),
                labelText: '请输入员工工号'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            //  obscureText: true,
            //  maxLines: 4,//多行文本框
            decoration: InputDecoration(
                //  hintText: "请输入密码",
                //  border: OutlineInputBorder(),
                //  labelText: '请输入员工工号'
                icon: Icon(Icons.menu),
                hintText: '请输入账号'),
          )
        ],
      ),
    )
        //  ) ,
        // ),
        );
  }
}
