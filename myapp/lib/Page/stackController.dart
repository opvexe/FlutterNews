import 'package:flutter/material.dart';

class stackCpntroller extends StatefulWidget {
  @override
  _stackCpntrollerState createState() => _stackCpntrollerState();
}

class _stackCpntrollerState extends State<stackCpntroller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Stack 视图",
          ),
        ),
        body: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                Positioned(  //Positioned控件 通过设置left和top属性可以设置控件的绝对位置  必须配合Stack控件来使用
                  left: 10.0,
                  top: 20.0,
                  child: Container(color: Colors.green,width: 80,height: 80,),
                ),
              ],
            ),
        ),
    );
  }
}