import 'package:flutter/material.dart';

class complexListView extends StatefulWidget {
  @override
  _complexListViewState createState() => _complexListViewState();
}

class _complexListViewState extends State<complexListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '复杂ListView 视图',
        ),
      ),
      body: _listComplexView(),
    );
  }
}

class _listComplexView extends StatefulWidget {
  @override
  __listComplexViewState createState() => __listComplexViewState();
}

class __listComplexViewState extends State<_listComplexView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _leftRow(context),
        ],
      ),
    );
  }

  //创建左侧视图
  Widget _leftRow(BuildContext context) {
    return Row(
      children: <Widget>[
        Ink(  //点击无波浪
          color: Colors.red,
          child: InkWell(
            onTap: (){
              print('楼层:1_Click');
            },
            child: Column(
              children: <Widget>[
                new Text('第一个标题',),
                new Text('第二个标题'),
                new Container(color: Colors.green,width: MediaQuery.of(context).size.width/2,height: 120.0,),
              ],
            ),
          ),
        ),
        
        Column(
          children: <Widget>[
            InkWell(
              onTap: (){
                print('楼层:2_Click');
              },
              child: Container(color: Colors.red,width: MediaQuery.of(context).size.width/2,height: 80.0,),
            ),

          ],
        )

      ],
    );
  }
}
