import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key key}) : super(key: key);

  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.pink,
                  labelColor: Colors.pink,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: '近期'),
                    Tab(text: '今日'),
                    Tab(text: '推荐'),
                    Tab(text: '热门'),
                    Tab(text: '科技'),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(title: Text('1111')),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('2222')),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('3333')),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('4444')),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('5555')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}