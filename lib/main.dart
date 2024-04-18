import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_1.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Stateless Widget')),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Stateless Widget',
            textDirection: TextDirection.ltr,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pageone()),
              );
            },
            icon: Icon(Icons.web),
            tooltip: 'Следующая страница',
          ),
        ],
      ),
    );
  }
}
