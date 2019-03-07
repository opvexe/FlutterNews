import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/mineController.dart';
import 'package:myapp/foundController.dart';
import 'package:myapp/peoplesController.dart';
import 'package:myapp/Page/homeController.dart';
import 'package:myapp/profile.dart';

class tabbarController extends StatefulWidget {
  @override
  _tabbarControllerState createState() => _tabbarControllerState();
}

class _tabbarControllerState extends State<tabbarController> {
  var items = new List<BottomNavigationBarItem>();  //mark:tabbar 数组
  var controllers =new List<StatefulWidget>(); //mark: controllers 数组
  int index = 0;  ///默认选中第一个tabbar 
  
  ///MARK: 初始化数据
  @override
  void initState() {

    items = [
      new BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.home),
        title: new Text("首页"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(
          Icons.adjust,
          color: Colors.grey,
        ),
        title: new Text("商品"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(
          Icons.adjust,
          color: Colors.grey,
        ),
        title: new Text("我的"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.room, color: Colors.grey),
        title: new Text("发布"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.perm_identity, color: Colors.grey),
        title: new Text("设置"),
      ),
    ];

    controllers = [
      new home(),
      new found(),
      new profile(),
      new peoples(),
      new mine(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange.shade400,  ///设置controller背景视图颜色
      backgroundColor:Colors.white,
      bottomNavigationBar: new BottomNavigationBar(
        items: items,
        type: BottomNavigationBarType.fixed,
        onTap: (int selectIndex){
          setState(() {
            print('tabbar:$selectIndex');
            index =selectIndex;
          });
        },
        currentIndex: index,
      ),
      body: controllers[index],  //切换controllers
    );
  }
}
