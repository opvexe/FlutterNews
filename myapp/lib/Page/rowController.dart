import 'package:flutter/material.dart';

class rowController extends StatefulWidget {
  @override
  _rowControllerState createState() => _rowControllerState();
}

class _rowControllerState extends State<rowController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Row 视图',
        ),
      ),
      body: Center(
        //center 包含一个widget(居中的)
        child: Container(
          color: Colors.yellow.shade600,
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0), //外边距
          padding: EdgeInsets.fromLTRB(15.0, 10.0, 10.0, 15.0),//内边距
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 45.0,
                    height: 30.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      '置顶',
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        'This project is a starting point for a Flutter applicationThis project is a starting point for a Flutter applicationThis project is a starting point for a Flutter application',
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Text(
                      '右侧数据',
                      style: TextStyle(fontSize: 16.0, color: Colors.brown),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.red,
                height: 60.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
