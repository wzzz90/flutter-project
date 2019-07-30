import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮演示页面'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {

            },
          )
        ],
      ),
      floatingActionButton: Container(
        width: 80,
        height: 80,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('floatingActionButton');
          },
          backgroundColor: Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text('普通按钮'),
                onPressed: () {
                  print('普通按钮');
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text('有颜色的按钮'),
                color: Colors.yellow,
                textColor: Colors.white,
                onPressed: () {
                  print('有颜色的按钮');
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text('有阴影的按钮'),
                color: Colors.yellow,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {
                  print('有阴影的按钮');
                },
              ),
              RaisedButton.icon(
                label: Text('图标按钮'),
                icon: Icon(Icons.search),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('图标按钮');
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                width: 200,
                height: 60,
                child: RaisedButton(
                  child: Text('设置宽高的按钮'),
                  color: Colors.yellow,
                  textColor: Colors.white,
                  elevation: 10,
                  onPressed: () {
                    print('设置宽高的按钮');
                  },
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  child: RaisedButton(
                    child: Text('自适应宽的按钮'),
                    color: Colors.yellow,
                    textColor: Colors.white,
                    elevation: 10,
                    onPressed: () {
                      print('自适应宽的按钮');
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                child: Text('圆角按钮'),
                color: Colors.yellow,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                onPressed: () {
                  print('圆角按钮');
                },
              ),
              Container(
                height: 80,
                child: RaisedButton(
                  child: Text('圆形按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: CircleBorder(
                    side: BorderSide(color: Colors.white)
                  ),
                  onPressed: () {
                    print('圆形按钮');
                  },
                ),
              ),
              SizedBox(width: 10,),
              FlatButton(
                child: Text('FlatButton'),
                onPressed: () {
                  print('FlatButton');
                },
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: OutlineButton(
                    child: Text('OutlineButton'),
                    textColor: Colors.blue,
                    onPressed: () {
                      print('OutlineButton');
                    },
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('登录'),
                    color: Colors.yellow,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: () {
                      print('登录');
                    },
                  ),
                  RaisedButton(
                    child: Text('注册'),
                    color: Colors.yellow,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: () {
                      print('注册');
                    },
                  ),
                  MyButton(text:'自定义按钮', width: 100.0, height: 50.0, pressed: () {
                    print('自定义按钮');
                  },)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final text;
  final pressed;
  final double width;
  final double height;

  const MyButton({this.text='', this.pressed = null, this.width=80.0,this.height=40.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,

      ),
    );
  }
}