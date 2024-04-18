import 'package:flutter/material.dart';
import 'package:ROS_VSK2/on_gen_route.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var path = settings.name!.split('/');

    if (path[1] == "details") {
      return new MaterialPageRoute(
        builder: (context) => new DetailScreen(id: int.parse(path[2])),
      );
    }

    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ошибка!'),
      ),
      body: Center(
        child: Text('ОШИБКА!'),
      ),
    );
  });
}
