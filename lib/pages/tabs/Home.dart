import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('AppBarDemo'),
          onPressed: () {
            Navigator.pushNamed(context, '/appbar');
          },
        ),
        RaisedButton(
          child: Text('利用tabbarcontroller完成导航栏'),
          onPressed: () {
            Navigator.pushNamed(context, '/tabcontroll');
          },
        ),
        RaisedButton(
          child: Text('表单演示页面'),
          onPressed: () {
            Navigator.pushNamed(context, '/textfield');
          },
        ),
      ],
    );
  }
}