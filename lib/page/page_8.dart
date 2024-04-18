import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_9.dart';

class Pageeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'ShadowsInto'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Import Fonts'),
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          }
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Здравствуй!',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              Text(
                'Сегодня Flutter и мы сдаем',
                style: TextStyle(fontSize: 30, fontFamily: 'Shadows Into'),
              ),
              Text(
                'Ros_VSK2',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pagenine()),
                  );
                },
                icon: Icon(Icons.web),
                tooltip: 'Следующая страница',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
