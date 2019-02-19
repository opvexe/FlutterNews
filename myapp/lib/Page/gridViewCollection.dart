import 'package:flutter/material.dart';

class gridViewCollection extends StatefulWidget {
  @override
  _gridViewCollectionState createState() => _gridViewCollectionState();
}

class _gridViewCollectionState extends State<gridViewCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('瀑布流视图'),
      ),
      body: Container(
        height: 320.0,
        padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 4.0),
        child: GridView.count(
          crossAxisCount: 5,
          mainAxisSpacing: 20.0,//竖向间距
          crossAxisSpacing: 4.0,//横向间距
          children: buildGrid(10),
        ),
      ),
    );
  }
}

///添加数据
List<Widget> buildGrid(int index){
  List<Widget> widgetList = new List();
  for (var i = 0; i < index; i++) {
    widgetList.add(getItems());
  }
  return widgetList;
}

//创建视图
Widget getItems(){
  return Container(
     child: Column(
       children: <Widget>[
        new Image(image: new NetworkImage("https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=495625508,"
      "3408544765&fm=27&gp=0.jpg"),width: 95.0,),
       Padding(padding: const EdgeInsets.only(top: 5.0),),
        new Text('测试数据',),
       ],
     ),
  );
}