
import 'package:flutter/material.dart';
import 'package:untitled/header_widget.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    '/home': (context) =>  HeaderWidget(),
  };
}
