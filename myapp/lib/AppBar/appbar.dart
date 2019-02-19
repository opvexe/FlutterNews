import 'package:flutter/material.dart';

class appbarView extends StatefulWidget {
  @override
  _appbarViewState createState() => _appbarViewState();
}

class _appbarViewState extends State<appbarView> {
  //默认选中第一个
  ChocieClass _selectedChoice = choices[0];

  void _select(ChocieClass choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Text('AppBarView'),
        actions: <Widget>[
          //导航按钮
          new IconButton(
            icon: Icon(choices[0].icon),
            onPressed: () {
              _select(choices[0]);
            },
          ),
          new IconButton(
            icon: Icon(choices[1].icon),
            onPressed: () {
              _select(choices[1]);
            },
          ),
          new PopupMenuButton(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices
                  .skip(2)
                  .map<PopupMenuItem<ChocieClass>>((ChocieClass choice) {
                return PopupMenuItem<ChocieClass>(
                  value: choice,
                  child: Text(choice.title),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ChoiceCard(choice: _selectedChoice),
      ),
    );
  }
}

//创建类对象
class ChocieClass {
  const ChocieClass({this.title, this.icon});
  final String title;
  final IconData icon;
}

const List<ChocieClass> choices = <ChocieClass>[
  ChocieClass(title: '汽车', icon: Icons.directions_car),
  ChocieClass(title: '自行车', icon: Icons.directions_bike),
  ChocieClass(title: '船', icon: Icons.directions_boat),
  ChocieClass(title: '公交车', icon: Icons.directions_bus),
  ChocieClass(title: '火车', icon: Icons.directions_railway),
  ChocieClass(title: '行走', icon: Icons.directions_walk),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);
  final ChocieClass choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 128.0, color: textStyle.color),
            Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}
