import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Button.dart';
import '../pages/TextField.dart';

final routes = {
  '/': (context) => Tabs(),
  '/textfield': (context) => TextFieldPage(),
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