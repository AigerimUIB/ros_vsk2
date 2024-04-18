import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_2.dart';

class Pageone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Statefull Widget'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Возврат на предыдущую страницу
          },
        ),
      ),
      body: SimpleWidget(),
    );
  }
}

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  int _count = 0;

  void _handleButton() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('$_count'),
          ElevatedButton(
            onPressed: () {
              _handleButton();
            },
            child: Text('Тыкни'),
          ),
          SizedBox(height: 10.0),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagetwo()),
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
