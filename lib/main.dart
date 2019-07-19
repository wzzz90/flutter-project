import 'package:flutter/material.dart';
import './routes/Routes.dart';
void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute
    );
  }
}


/* 
Flutter返回上一个页面
Navigator.of(context).pop();

Flutter中替换路由
比如我们从用户中心页面跳转到了 register First页面,然后从 register First页面通过
oushReplacement Named跳转到了 register Second页面。这个时候当我们点击 registerSecond
的返回按钮的时候它会直接返回到用户中心。
Navigator.of(context).pushReplacementNamed(/register Second')

Flutter回到根路由
比如我们从用户中心跳转到 register First页面,然后从 registerFirst页面跳转到 registerSecond
页面,然后从 registerSecond跳转到了 registerThird页面。这个时候我们想的是 registerThird
注册成功后返回到用户中心。这个时候就用到了返回到根路由的方法 */
