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
          onPressed: () {
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
                margin: EdgeInsets.only(left: 10.0, right: 15.0),
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
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            child: roundInnerSquareBox(
              child: Container(
                padding: EdgeInsets.fromLTRB(24.0, 28.0, 24.0, 12.0),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Unit 1 Lesson 3 About animal",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Round",
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5.0, bottom: 3.0),
                      child: Image.asset("assets/images/publish_work_line.png"),
                    ),
                    Wrap(
                      alignment: WrapAlignment.start,
                      children: <Widget>[
                        itemsContainer(
                          title: "课文跟读 12",
                        ),
                        itemsContainer(
                          title: "课文跟读 12",
                        ),
                        itemsContainer(
                          title: "课文跟读 12",
                        ),
                        itemsContainer(
                          title: "课文跟读 12",
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 175.0, top: 10.0),
                      child: Stack(
                        children: <Widget>[
                          Image.asset("assets/images/publish_work_sign.png"),
                          Positioned(
                            left: 4.0,
                            top: 4.0,
                            child: Text(
                              "预习",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "明天12:00截止",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xFFFFC1C1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          lineContainer(
            title: Text(
              "给家长发个通知",
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xFF757085),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 60.0,
                  icon: Image.asset("assets/images/share_wechat.png"),
                  onPressed: (){
                    print("share wechat");
                  },
                ),
                Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 60.0,
                  icon: Image.asset("assets/images/share_qq.png"),
                  onPressed: (){
                    print("share QQ");
                  },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class roundInnerSquareBox extends StatelessWidget {
  roundInnerSquareBox({
    this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return new ClipRRect(
      borderRadius: BorderRadius.all(const Radius.circular(16.0)),
      child: Container(
        color: Color(0xFFF0D5A9),
        padding: EdgeInsets.all(12.0),
        child: Container(
          color: Color(0xFF3C594E),
          child: child,
        ),
      ),
    );
  }
}

class itemsContainer extends StatelessWidget {
  itemsContainer({
    this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(
        "$title",
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.white,
        ),
      ),
    );
  }
}

class lineContainer extends StatelessWidget {
  lineContainer({
    @required this.title,
  });
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              color: Color(0xFFD4CFE4),
              height: 1.0,
            ),
          ),
          title,
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10.0),
              color: Color(0xFFD4CFE4),
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
