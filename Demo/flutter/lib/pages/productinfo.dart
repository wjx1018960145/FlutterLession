import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
  Map arguments;
  ProductInfo({this.arguments});

  @override
  _ProductInfoState createState() => _ProductInfoState(arguments:this.arguments);
}

class _ProductInfoState extends State<ProductInfo> {
  Map arguments;
  _ProductInfoState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         appBar: AppBar(
           title: Text('详情'),
         ),
         body: Text('内容详情 ${this.arguments["pid"]}'),
       )
    );
  }
}