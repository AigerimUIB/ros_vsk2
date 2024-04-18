import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_4.dart';

class Pagethree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column & Row Widgets'),
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

class TextWidget extends StatelessWidget {
  const TextWidget(
      {Key? key,
      required this.text,
      required this.color,
      required this.width,
      required this.fontSize})
      : super(key: key);

  final String text;
  final Color color;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      color: color,
      height: 100,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        TextWidget(
          color: Colors.red,
          width: 120,
          text: 'Один',
          fontSize: 50,
        ),
        TextWidget(
          color: Colors.yellow,
          width: 180,
          text: 'Два',
          fontSize: 40,
        ),
        TextWidget(
          color: Colors.green,
          width: 100,
          text: 'Три',
          fontSize: 30,
        ),
        SizedBox(height: 10.0),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pagefour()),
            );
          },
          icon: Icon(Icons.web),
          tooltip: 'Следующая страница',
        ),
      ],
    );
  }
}
