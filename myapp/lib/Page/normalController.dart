import 'package:flutter/material.dart';

class normalController extends StatefulWidget {
  @override
  _normalControllerState createState() => _normalControllerState();
}

class _normalControllerState extends State<normalController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
// class home extends StatefulWidget {
//   @override
//   _homeState createState() => _homeState();
// }

// class _homeState extends State<home> {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//     ///设置页面背景色
//     backgroundColor: Colors.yellow,
//     ///设置本页面导航 字体 ，背景色
//     appBar:new AppBar(
//       backgroundColor: Colors.green,
//       title: new Text(
//         'UI界面布局',
//         style: new TextStyle(
//           fontSize: 18.0,
//           fontStyle:FontStyle.normal, 
//         ),
//       ),
//     ) ,
//       body: _contentViewessWidget(),
//     );
//   }
// }


// ///MARK: 创建不可变视图 200.0 高100.0
// class _contentViewessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     print(MediaQuery.of(context).size);  ///打印屏幕尺寸
//     return Container(
//       ///设置控件的大小
//       margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0), ///距离上，左10
//       width: MediaQuery.of(context).size.width,
//       height: 200.0,
//       ///设置文本展示位置
//       alignment: Alignment.topLeft,
//       padding: EdgeInsets.all(10.0),
      
//       decoration: new BoxDecoration(
//         borderRadius: BorderRadius.all(Radius.circular(8.0)), ///设置圆角
//         color: Colors.red,    ///设置视图背景色
//         border: new Border.all(
//           color: Colors.black,
//           width: 5.0,
//         ),
//       ),
//       child: new Text(
//         '我就是个测试文本',
//         style: new TextStyle(
//           fontSize: 16.0,
//           fontStyle: FontStyle.normal,
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }

// class _userInfolessWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Expanded(
//       flex: 1,
//       child: new Center(
         
//         child: new Row(

//           mainAxisAlignment: MainAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           crossAxisAlignment: CrossAxisAlignment.center,

//           children: <Widget>[
//             new Container(
//               color: Colors.red,
//             ),
//             new Padding(padding: new EdgeInsets.only(left:5.0)),
//             new Container(
//               width: 60.0,
//               height: 20.0,
//               color: Colors.green,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// ///MARK: 创建可变视图
// class  contentViewfulWidget extends StatefulWidget {
//  ///MARK: 定义可改变文本
//  final String text;

//  ///通过构造方法传值
//   contentViewfulWidget(this.text);

//  ///主要是负责创建state
//  @override
//  _contentViewfulWidgetState createState() => _contentViewfulWidgetState(text);
// }

// class _contentViewfulWidgetState extends State<contentViewfulWidget>  {

//  String text;

//  _contentViewfulWidgetState(this.text);


//  ///MARK: 初始化
//  @override
//  void initState() {
//    super.initState();

//    new Future.delayed(const Duration(seconds: 5), () {
//      setState(() {
//        text = '我改变了自己的值';
//      });
//    });
//  }

//  ///MARK: 销毁
//  @override
//  void dispose() {
//    super.dispose();
//  }

//  ///MARK: 在initState之后调
//  @override
//  void didChangeDependencies() {
//    super.didChangeDependencies();
//  }

//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: new Text(
//          text   ////MARK: 改变的文本
//      ),
//    );
//  }
// }

