import 'package:flutter/material.dart';
import 'package:ROS_VSK2/ui_widget.dart/BappBarbuttom.dart';

class BAppBar extends StatelessWidget {
  const BAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 10,
      // color: Colors.blueGrey,
      child: Container(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottomAppBarButton(title: 'Заметки', icon: Icons.folder),
            BottomAppBarButton(title: 'Архив', icon: Icons.archive),
          ],
        ),
      ),
      shape: CircularNotchedRectangle(),
    );
  }
}
