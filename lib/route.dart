import 'package:flutter/material.dart';
import 'pages/movie/movieDetail.dart';
import 'pages/tabs.dart';
final routes = {
  '/': (context) => TabsPage(),
  '/detail': (context,{arguments}) => MovieDetailPage(arguments:arguments),

};


// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBulider = routes[name];

  if (settings.arguments != null) {
    final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBulider(context, arguments: settings.arguments));
    return route;
  } else {
    final Route route =
    MaterialPageRoute(builder: (context) => pageContentBulider(context));
    return route;
  }
};