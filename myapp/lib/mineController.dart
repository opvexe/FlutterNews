import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class mine extends StatefulWidget {
  @override
  _mineState createState() => _mineState();
}

class _mineState extends State<mine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Text(
          "设置",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          SizedBox(
            width: 5.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Theme(
          data: ThemeData(fontFamily: "Raleway"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, //充满交叉轴
            children: <Widget>[
              ///区头1
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "常规设置",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      title: Text("账单"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.red,
                      ),
                      title: Text("邮箱"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.sync,
                        color: Colors.blue,
                      ),
                      title: Text("异步数据"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),

              //区头2
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "网络设置",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.sim_card,
                        color: Colors.grey,
                      ),
                      title: Text("SIM卡"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.wifi,
                        color: Colors.amber,
                      ),
                      title: Text("WIFI"),
                      trailing: _switchWidget(
                        defValue: true,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.bluetooth,
                        color: Colors.blue,
                      ),
                      title: Text("蓝牙"),
                      trailing: _switchWidget(
                        defValue: false,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.more_horiz,
                        color: Colors.blue,
                      ),
                      title: Text("更多"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),

              ///区头3
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "声音设置",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.do_not_disturb_off,
                        color: Colors.orange,
                      ),
                      title: Text("安静模式"),
                      trailing: _switchWidget(
                        defValue: false,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.vibration,
                        color: Colors.purple,
                      ),
                      title: Text("震动设置"),
                      trailing: _switchWidget(
                        defValue: true,
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.volume_up,
                        color: Colors.green,
                      ),
                      title: Text("响铃设置"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phonelink_ring,
                        color: Colors.grey,
                      ),
                      title: Text("铃声设置"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///switch
class _switchWidget extends StatefulWidget {
  bool defValue;
  _switchWidget({this.defValue});
  @override
  __switchWidgetState createState() => __switchWidgetState();
}

class __switchWidgetState extends State<_switchWidget> {
  @override
  Widget build(BuildContext context) {
    return defaultTargetPlatform == TargetPlatform.android
        ? Switch(
            value: widget.defValue,
            onChanged: (val) {
              setState(() {
                widget.defValue = val;
              });
            },
          )
        : CupertinoSwitch(
            value: widget.defValue,
            onChanged: (val) {
              setState(() {
              widget.defValue = val;
              });
            },
          );
  }
}

/// 四周带圆角的button
class SimpleRoundButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Color textColor;
  final Function onPressed;
  SimpleRoundButton({
    this.backgroundColor,
    this.buttonText,
    this.textColor,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              splashColor: this.backgroundColor,
              color: this.backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: buttonText,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              onPressed: () => onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
