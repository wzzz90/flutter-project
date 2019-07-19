
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import './tabs/Home.dart';
import './tabs/Setting.dart';
import './tabs/Category.dart';
class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0 }) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int currentIndex;
  var list = [
    Homepage(),
    SettingPage(),
    CategoryPage()
  ];
  _TabsState(index) {
    this.currentIndex = index;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
        ),
        body: this.list[this.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          // type: BottomNavigationBarType.fixed,
          currentIndex: this.currentIndex,
          onTap: (int index) {
            setState(() {
             this.currentIndex = index; 
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("首页")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("设置")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("分类")
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: UserAccountsDrawerHeader(
                      accountName: Text('timer'),
                      accountEmail: Text('timer@gmail.com'),
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage('http://images-new.123rf.com.cn/450wm/zangfuwen/zangfuwen1812/zangfuwen181200031/114257045-dusk-clouds-dagu-mountain.jpg'),
                      ),
                      decoration: BoxDecoration(
                        // color: Colors.yellow,
                        image: DecorationImage(
                          image: NetworkImage('http://images-new.123rf.com.cn/450wm/zangfuwen/zangfuwen1812/zangfuwen181200031/114257045-dusk-clouds-dagu-mountain.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('首页'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('用户中心'),
                onTap: () {
                  Navigator.of(context).pop();//用来关闭侧边栏
                  Navigator.pushNamed(context, '/user');
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('设置'),
              ),
              Divider(),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: Text('右侧侧边栏'),
        ),
      );
  }
}