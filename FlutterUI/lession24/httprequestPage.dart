import 'dart:io' as prefix0;

import 'package:flutter/material.dart';
import 'package:flutter01/helper/http/HttpRequest.dart';

class HttpPage extends StatefulWidget {
  HttpPage({Key key}) : super(key: key);

  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  Map res;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void getRequest(String url) {
    HttpRequest.httpGet(url, (success) {
      //  print(success);
      setState(() {
        res = success;
      });
    }, (error) {

    });
  }

  postRequest(String url,Map body) {
    HttpRequest.httpPost(url, body, (success){
      print(success);
      setState(() {
        res = success;
      });
    }, (error){

    });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //  crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  child: Text('get请求'),
                  onPressed: () {
                    getRequest('http://rap2api.taobao.org/app/mock/115854/wjx/test');
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  child: Text('post'),
                  onPressed: () {
                    Map map = {
                      "pro_type": "",
                      "user_id": "",
                      "start": "",
                      "limit": ""
                    };
                    postRequest('http://rap2api.taobao.org/app/mock/21466/proQuery.app', map);

                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),

              height: 200,
              //  width: 300,
              color: Colors.grey,
              child: Text('res$res'),
            ),
            Row(
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
