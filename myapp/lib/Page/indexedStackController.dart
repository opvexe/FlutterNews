import 'package:flutter/material.dart';

class indexedStackController extends StatefulWidget {
  @override
  _indexedStackControllerState createState() => _indexedStackControllerState();
}

class _indexedStackControllerState extends State<indexedStackController> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "IndexedStack 视图", // 与Stack 不同的是只能显示一个视图
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: IndexedStack(
                index: selectIndex,
                alignment: Alignment(0.6, 0.6),
                children: <Widget>[
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Container(
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    if (selectIndex == 1) {
                      selectIndex = 0;
                    } else {
                      selectIndex = 1;
                    }
                  });
                },
                color: Colors.yellow,
                child: Text("黄色按钮"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
