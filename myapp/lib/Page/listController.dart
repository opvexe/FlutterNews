import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class listController extends StatefulWidget {
  @override
  _listControllerState createState() => _listControllerState();
}

class _listControllerState extends State<listController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TableView 视图',
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 60.0,
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0), //区头间距
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  //修饰区头边角线
                  color: Colors.red,
                  border: Border(
                    bottom: BorderSide(width: 5.0, color: Colors.black),
                  )),
              child: Text('精品推荐'),
            ),
            new Expanded(
              child: ListView.builder(
                itemCount: lists.length,
                // padding: const EdgeInsets.all(10.0), //外部间距
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    //点击波轮效果
                    onTap: () {
                      print('object$index');
                    },

                    child: Column(
                      children: <Widget>[
                        Container(
                          // margin: const EdgeInsets.only(left: 10.0),
                          width: MediaQuery.of(context).size.width,
                          height: 60.0,
                          color: Colors.green,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.only(left: 10.0),
                                color: Colors.brown,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      lists[index].icon,
                                      size: 25.0,
                                      color: Colors.grey,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                    ),
                                    Text(lists[index].title,
                                        style: TextStyle(color: Colors.orange)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                        ),
                        Container(
                          color: Colors.purple,
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//创建数据对象
class ListModel {
  const ListModel({this.title, this.icon, this.isShow});
  final String title;
  final IconData icon;
  final bool isShow; //右侧图片展示不展示
}

//创建数组
const List<ListModel> lists = <ListModel>[
  ListModel(title: '支付', icon: Icons.star, isShow: true),
  ListModel(title: '收藏', icon: Icons.link, isShow: true),
  ListModel(title: '相册', icon: Icons.list, isShow: true),
  ListModel(title: '卡包', icon: Icons.photo, isShow: true),
  ListModel(title: '表情', icon: Icons.face, isShow: false),
  ListModel(title: '设置', icon: Icons.settings, isShow: true),
];
