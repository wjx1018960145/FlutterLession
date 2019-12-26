import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  RadioDemo({Key key}) : super(key: key);
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Text("文本"),
    );
  }
}
