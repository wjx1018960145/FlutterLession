import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('产品页面'),
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
          RaisedButton(
         child: Text('跳转到产品详情'),
         onPressed: (){
           
           Navigator.pushNamed(context, '/productinfo',arguments:{
             "pid":56456
           });

          //  Navigator.of(context).push(
          //    MaterialPageRoute(
          //      builder: (context)=>SearchPage()
          //    )
          //  );
         },
         color: Theme.of(context).accentColor,
         textTheme: ButtonTextTheme.primary,
       ),
       
         ],
        
    )
    );
  }
}