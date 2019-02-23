import 'package:flutter/material.dart';

class expandController extends StatefulWidget {
  @override
  _expandControllerState createState() => _expandControllerState();
}

class _expandControllerState extends State<expandController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expanded 视图',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 120.0,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80.0,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 60.0),),

            Container(
              height: 200.0,
              padding: EdgeInsets.all(10.0),
              color: Colors.red,
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: (){
                      
                    },
                    color: Colors.purple,
                    child: Text("紫色按钮"),
                  ),
                  
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: (){

                      },
                      color: Colors.yellow,
                      child: Text("黄色按钮"),
                    ),
                  ),

                  RaisedButton(
                    onPressed: (){

                    },
                    color: Colors.pink,
                    child: Text("粉色按钮"),
                  ),
                ],
              ),
            ),
    Padding(padding: EdgeInsets.only(top: 20.0),),
            Container(
              height: 200.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(color: Colors.red,height: 80.0,),
                  ),
                Expanded( //Expanded控件的默认flex系数为1。
                  flex: 2, //其中中间的控件是其他两个控件的两倍，则将中间控件的弹性系数设置为2：
                  child: Container(color: Colors.yellow,),
                ),
                Expanded(
                  child: Container(color: Colors.purple,height: 80.0,),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
