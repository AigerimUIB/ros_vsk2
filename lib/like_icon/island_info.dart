import 'package:flutter/material.dart';
import 'package:ROS_VSK2/page/page_8.dart';

class AboutIsland extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Гренландия',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Гренландия — крупнейший на Земле[1] остров. Расположен на северо-востоке Северной Америки.  Омывается Атлантическим и Северным Ледовитым океанами.',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pageeight()),
                );
              },
              icon: Icon(Icons.web),
              tooltip: 'Следующая страница',
            ),
          ],
        ),
      ),
    );
  }
}
