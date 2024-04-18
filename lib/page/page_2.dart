import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_3.dart';

class Pagetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget'),
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

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Greenland',
              style: TextStyle(fontSize: 40, color: Colors.white70),
            ),
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/greanlandia.jpg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                  offset: Offset(-5, 5),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pagethree()),
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
