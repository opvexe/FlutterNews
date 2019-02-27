import 'package:flutter/material.dart';

class peoples extends StatefulWidget {
  @override
  _peoplesState createState() => _peoplesState();
}

class _peoplesState extends State<peoples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, //去掉导航底部阴影
        centerTitle: true, //文字居中
        title: Text(
          "发布成功",
          style: new TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
          ),
        ),
        leading: IconButton(
          icon: Image.asset("assets/images/nav_close.png"),
          onPressed: (){
            print("click left navagtion button");
          },
        ),
      ),
      body: _peopleView(),
    );
  }
}

class _peopleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 40.0,
                height: 40.0,
                margin: EdgeInsets.only(left: 15.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar2.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0,right: 15.0),
                child: Stack(
                  children: <Widget>[
                    Image.asset("assets/images/publish_chat_box.png"),
                    Positioned(
                      left: 25.0,
                      top: 15.0,
                      child: Text(
                        "邱老师发布了一个任务，请注意查收~！",
                        style: new TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}