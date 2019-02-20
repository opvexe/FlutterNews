import 'package:flutter/material.dart';

class cardController extends StatefulWidget {
  @override
  _cardControllerState createState() => _cardControllerState();
}

class _cardControllerState extends State<cardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card 卡片视图',
        ),
      ),
      body: Center(
        child: new FlatButton(
          onPressed: () {
            print('object');
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 6.0, bottom: 5.0),
                  alignment: Alignment.topLeft,
                  child: new Text(
                    "这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述这是一点描述",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    maxLines: 3, //最多三行
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

               new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _itemsView(context, Icons.star, "1000"),
                    _itemsView(context, Icons.link, "100"),
                    _itemsView(context, Icons.subject, "500"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _itemsView(BuildContext context, IconData icon, String text) {
  return Expanded(
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //水平居中
        mainAxisSize: MainAxisSize.max, //间隙最大
        crossAxisAlignment: CrossAxisAlignment.center, //竖直居中
        children: <Widget>[
          new Icon(
            icon,
            size: 16.0,
            color: Colors.grey,
          ),
          new Padding(
            padding: EdgeInsets.only(left: 5.0),
          ),
          new Text(
            text,
            style: new TextStyle(color: Colors.grey, fontSize: 14.0),
            overflow: TextOverflow.ellipsis, ////超过的省略为...显示
            maxLines: 1,
          ),
        ],
      ),
    ),
  );
}
