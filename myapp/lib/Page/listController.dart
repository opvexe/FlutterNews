import 'package:flutter/material.dart';

class listController extends StatefulWidget {
  @override
  _listControllerState createState() => _listControllerState();
}

class _listControllerState extends State<listController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
    );
  }
}
        
        
    //     class home extends StatefulWidget {
    //     @override
    //     _homeState createState() => _homeState();
    //     }

    //     class _homeState extends State<home> {
          
    //     ///创建数组
    //     List<String> lists = [];
        
    //     @override 
    //     void initState() {
    //       ///数组复制 --- 接口请求数据
    //       lists = ['UI界面简单布局','UI界面中级布局','UI界面高级布局','UI界面高难度布局','ListView基础布局','CollectionView基础布局'];
    //   }
          

    //     @override
    //     Widget build(BuildContext context) {
    //     return new Scaffold(
    //     ///设置页面背景色
    //     backgroundColor: Colors.white,
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
    //     ///MARK:创建tableView 
    //       body: Center(
    //         child: ListView.builder(
    //           itemCount: lists.length, ///MARK: number of count
    //           itemExtent: 80.0, ///默认row 的高度
    //           itemBuilder: (BuildContext context, int index) {
                
    //             return new Container(
    //                   margin: EdgeInsets.all(5.0),
    //                   child: Row(
    //                     children: <Widget>[
    //                       ClipRRect(
    //                         borderRadius: BorderRadius.circular(5.0),
    //                         child:Image.network(
    //                           'http://p1.pstatp.com/list/pgc-image/RI0y5JA3Fxf4FX',
    //                           width: 100.0,
    //                           height: 150.0,
    //                           fit: BoxFit.fill,
    //                           // color: Colors.purple,
    //                         )
    //                       ),
    //                       Expanded(
    //                           child: Container(
    //                             margin: EdgeInsets.only(left: 8.0),
    //                             height: 200.0,
    //                             child: Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: <Widget>[
    //                                 Text(
    //                                   lists[index],
    //                                   style: TextStyle(
    //                                     fontSize: 20.0,
    //                                     fontWeight: FontWeight.bold,
    //                                   ),
    //                                   maxLines: 1,
    //                                 ),
    //                                 Text(
    //                                   '作者: $index',
    //                                   style: TextStyle(
    //                                     fontSize: 16.0,
    //                                     fontStyle: FontStyle.normal,
    //                                   ),
    //                                 ),
    //                                 Text(
    //                                   '评分: $index',
    //                                   style: TextStyle(
    //                                     fontSize: 14.0,
    //                                   ),                                        
    //                                 ),
    //                               ],
    //                             ),
    //                           ),
    //                       ),
    //                     ],
    //                   ),
    //             );
    //           },
    //         ),
    //       ),
    //     );
    //   }
    // }