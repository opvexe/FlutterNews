import 'package:flutter/material.dart';
import './normalController.dart';
import './listController.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'UI界面布局',
          style: new TextStyle(
            fontSize: 18.0,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.list),
            onPressed: _right_navgation_action,
          )
        ],
      ),
      body: new TableListView(),
    );
  }
}

///导航右侧按钮事件
void _right_navgation_action() {
  print('action');
}

class TableListView extends StatefulWidget {
  @override
  _TableListViewState createState() => _TableListViewState();
}

class _TableListViewState extends State<TableListView> {
  var lists = new List();

  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  void initState() {
    ///初始化数据
    lists = [
      {'title': 'UI界面简单布局', 'class': normalContrller(),},
      {'title': 'UI界面中级布局', 'class': listController(),},
      {'title': 'UI界面高级布局', 'class': listController()},
      {'title': 'UI界面高难度布局', 'class': listController()},
      {'title': 'ListView基础布局', 'class': listController()},
      {'title': 'CollectionView基础布局', 'class': listController()}
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: lists.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: new Text(
            lists[index]['title'],
            style: _biggerFont,
          ),
          onTap: () {
            setState(() {
              print('Tap:$index');

              ///MARK: 跳转事件 动态（可传参数）
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) {
                    return lists[index]['class'];
                  },
                ),
              );
            });
          },
        );
      },
    );
  }
}
