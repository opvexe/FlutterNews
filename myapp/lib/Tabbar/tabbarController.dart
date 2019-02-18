import 'package:flutter/material.dart';
import 'package:myapp/mineController.dart';
import 'package:myapp/foundController.dart';
import 'package:myapp/peoplesController.dart';
import 'package:myapp/Page/homeController.dart';

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
        icon: new Icon(Icons.chat, color: Colors.grey),
        title: new Text("普通视图"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(
          Icons.perm_contact_calendar,
          color: Colors.grey,
        ),
        title: new Text("滚动视图"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.room, color: Colors.grey),
        title: new Text("瀑布流视图"),
      ),
      new BottomNavigationBarItem(
        icon: new Icon(Icons.perm_identity, color: Colors.grey),
        title: new Text("视图布局"),
      ),
    ];

    controllers = [
      new home(),
      new found(),
      new peoples(),
      new mine(),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
