import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/AppBarDemo.dart';
import '../pages/TabBarController.dart';
import '../pages/User.dart';

final routes = {
  '/': (context) => Tabs(),
  '/appbar': (context) => AppbarPage(),
  '/tabcontroll': (context) => TabBarControllerPage(),
  '/user': (context) => UserPage()
};


var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if(pageContentBuilder != null) {
    if(settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments)
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
};