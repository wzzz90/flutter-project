import 'package:flutter/material.dart';
import 'package:flutter_app01/pages/Tabs.dart';

class AppbarPage extends StatelessWidget {
  const AppbarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('menu');
          //   },
          // ),
          // backgroundColor: Colors.red,
          title: Text('AppBarDemo'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐',)
            ],
          ),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.search),
          //     onPressed: () {
          //       print('search');
          //     },
          //   ),
          //   IconButton(
          //     icon: Icon(Icons.settings),
          //     onPressed: () {
          //       print('settings');
          //     },
          //   ),
          // ],
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('热门tab'),
                ),
                ListTile(
                  title: Text('热门tab'),
                ),
                ListTile(
                  title: Text('热门tab'),
                )
              ],
            ),

            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('推荐tab'),
                ),
                ListTile(
                  title: Text('推荐tab'),
                ),
                ListTile(
                  title: Text('推荐tab'),
                )
              ],
            )
          ],
        )
      ),
    );
  }
}


/* 属性        描述
leading     在标题前面显示的一个控件,在首页通常显示应用
            的logo;在其他界面通常显示为返回按钮
title       标题,通常显示为当前界面的标题文字,可以放组
            件
actions     通常使用 IconButton来表示,可以放按钮组
bottom      通常放tabBar,标题下面显示一个Tab导航栏
backgroundColor 导航背景颜色
iconTheme    图标样式
textTheme     文字样式
centerTitle   标题是否居中显示 */