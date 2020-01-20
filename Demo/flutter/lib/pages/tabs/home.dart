import 'package:flutter/material.dart';
import '../search.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/search', arguments: {"id": 123});

            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到产品'),
          onPressed: () {
            Navigator.pushNamed(context, '/product');

            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到appbar'),
          onPressed: () {
            Navigator.pushNamed(context, '/appbar');

            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到TabBarController'),
          onPressed: () {
            Navigator.pushNamed(context, '/tabBarController');

            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text('跳转到按钮演示页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/buttonPage');

            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到表单演示页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/fromPage');

            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );

          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到下来刷新演示页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/refresh');
            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到网络请求演示页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/http');
            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        RaisedButton(
          child: Text('跳转到本地数据持久化演示页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/preferen');
            //  Navigator.of(context).push(
            //    MaterialPageRoute(
            //      builder: (context)=>SearchPage()
            //    )
            //  );
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        )
      ],
    );
  }
}
