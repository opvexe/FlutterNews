import 'package:flutter/material.dart';

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
              fontStyle:FontStyle.normal, 
            ),
         ),
       ),
       body: new TableListView(),
     );
  }
}

class TableListView extends StatefulWidget {
  @override
  _TableListViewState createState() => _TableListViewState();
}

class _TableListViewState extends State<TableListView> {

 List lists = [];
  
 final _biggerFont = const TextStyle(fontSize: 18.0);
  
  @override
  void initState() {
    super.initState();
    ///初始化数据
     lists = ['UI界面简单布局','UI界面中级布局','UI界面高级布局','UI界面高难度布局','ListView基础布局','CollectionView基础布局'];
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: lists.length,
      itemBuilder: (BuildContext context,int index){
        new Divider(); ///创建分割线
        return ListTile(
          title: new Text(
            lists[index],
            style: _biggerFont,
          ),
          onTap: (){
            setState(() {
                print('Tap:$index');
            });
          },
        );
      },
    );
  }
}


