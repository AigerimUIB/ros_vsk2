import 'package:flutter/material.dart';

class HeartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0), 
      child: Icon(
        Icons.favorite,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}

