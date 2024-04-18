import 'package:flutter/material.dart';
import 'package:ROS_VSK2/like_icon/island_info.dart';
import 'package:ROS_VSK2/like_icon/background_image.dart';
import 'package:ROS_VSK2/like_icon/heart.dart';

class Pageseven extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      // alignment: Alignment(1, 1),
      children: <Widget>[
        BackgroundImage(),
        AboutIsland(),
        HeartIcon(),
      ],
    );
  }
}
