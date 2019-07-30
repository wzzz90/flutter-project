import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  TextFieldPage({Key key}) : super(key: key);

  _TextFieldPageState createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('表单演示页面')
      ),
      body:Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget> [
            TextField()
          ]
        )
      )
    );
  }
}