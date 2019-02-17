import 'package:flutter/material.dart';
import './Page/homeController.dart';
import './peoplesController.dart';
import './foundController.dart';
import './mineController.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'title',
      theme: new ThemeData(
          primaryColor: Colors.red,
      ),
      home: SYTabbar(),
    );
  }
}


class SYTabbar extends StatefulWidget {
  @override
  _SYTabbarState createState() => _SYTabbarState();
}

class _SYTabbarState extends State<SYTabbar> {

  final List<BottomNavigationBarItem> items = [
  new BottomNavigationBarItem(icon: new Icon(Icons.chat,color: Colors.grey),title: new Text("ListView"),),
  new BottomNavigationBarItem(icon: new Icon(Icons.perm_contact_calendar,color: Colors.grey,),title: new Text("Text"),),
  new BottomNavigationBarItem(icon: new Icon(Icons.room,color: Colors.grey),title: new Text("ScrollView"),),
  new BottomNavigationBarItem(icon: new Icon(Icons.perm_identity,color: Colors.grey),title: new Text("Masony"),),
  ];

  final List<StatefulWidget> controllers = [new home(),new peoples(),new found(),new mine()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: new AppBar(
      //   title: new Text('Flutter学习demon'),
      // ),
      bottomNavigationBar: new BottomNavigationBar(items: items,type: BottomNavigationBarType.fixed,
      onTap: (int selectIndex){
        setState(() {
          index = selectIndex;
        });
        print('选中---$selectIndex');
      },
        currentIndex: index,
      ),
      body: controllers[index],
    );
  }
}



