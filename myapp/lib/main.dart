import 'package:flutter/material.dart';
import './Tabbar/tabbarController.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'title',
      theme: new ThemeData(
        primaryColor: Colors.cyan.shade400, ///tabbar 选中颜色
      ),
      home: tabbarController(),
    );
  }
}
