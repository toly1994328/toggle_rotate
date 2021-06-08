import 'dart:math';

import 'package:flutter/material.dart';
import 'package:toggle_rotate/toggle_rotate.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(),
          body: Center(child: HomePage()),
        ));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 20,
        children: <Widget>[
          ToggleRotate(
            beginAngle: 0, // 起始角度
            endAngle: 45, // 终止角度
            curve: Curves.linear, // 动画曲线
            durationMs: 400, // 动画时长
            clockwise: true, // 顺时针旋转
            child: FlutterLogo(size: 60,),
            onEnd: (bool isExpanded) {
              print("---expanded---:$isExpanded-------");
            },
            onTap: (){
              print("---按下----------");

            },
          ),
        ],
      ),
    );
  }
}