import 'package:flutter/material.dart';
import 'package:titactoe/Screen/FirstScreen.dart';
import 'package:titactoe/Screen/SecoundScreen.dart';

void main() => runApp(MaterialApp(
  onGenerateRoute: buildRoute,
  home: FirstScreen(),
));

Route buildRoute(RouteSettings settings) {
  var routes = <String, WidgetBuilder> {
    "/main" : (context) => SecoundScreen(Player: settings.arguments),
    "/" : (context) => FirstScreen(),
  };
  WidgetBuilder widgetBuilder = routes[settings.name];
  return MaterialPageRoute(builder: (context) => widgetBuilder(context));
}