import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _contentViewessWidget(),
    );
  }
}

///MARK: 创建不可变视图 200.0 高100.0
class _contentViewessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0), ///距离上，左10
      width: 200.0,
      height: 100.0,
      alignment: Alignment.center, ///设置文本居中
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8.0)), ///设置圆角
        color: Colors.red, ///设置视图背景色
        border: new Border.all(
          color: Colors.black,
          width: 5.0,
        ),
      ),
      child: new Text(
        '我就是个测试文本',
        style: new TextStyle(
          fontSize: 14.0,
          fontStyle: FontStyle.normal,
          color: Colors.white,
        ),
      ),
    );
  }
}


/////MARK: 创建可变视图
//class  contentViewfulWidget extends StatefulWidget {
//  ///MARK: 定义可改变文本
//  final String text;
//
//  ///通过构造方法传值
//   contentViewfulWidget(this.text);
//
//  ///主要是负责创建state
//  @override
//  _contentViewfulWidgetState createState() => _contentViewfulWidgetState();
//}
//
//class _contentViewfulWidgetState extends State<contentViewfulWidget> {
//
//  String text;
//
//  _contentViewfulWidgetState(this.text);
//
//
//  ///MARK: 初始化
//  @override
//  void initState() {
//    super.initState();
//
//    new Future.delayed(const Duration(seconds: 5), () {
//      setState(() {
//        text = '我改变了自己的值';
//      });
//    });
//  }
//
//  ///MARK: 销毁
//  @override
//  void dispose() {
//    super.dispose();
//  }
//
//  ///MARK: 在initState之后调
//  @override
//  void didChangeDependencies() {
//    super.didChangeDependencies();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: new Text(
//          text   ////MARK: 改变的文本
//      ),
//    );
//  }
//}







//ListView _listsTableView (){
//  return new ListView(
//    children: <Widget>[
//      new ListTile(
//        title: new Text('班主任'),
//        subtitle: new Text('干嘛'),
//        trailing: new Text('90'),
//      ),
//    ],
//  );
//}
