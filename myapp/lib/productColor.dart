import 'package:flutter/material.dart';

class colorController extends StatefulWidget {
  @override
  _colorControllerState createState() => _colorControllerState();
}

class _colorControllerState extends State<colorController> {
  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
          colorsCard(),
          CommonDivider(),
          SizedBox(
          height: 5.0,
        ),

        SizedBox(
          height: 20.0,
        ),
       ],
    );
  }

  Widget colorsCard() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text("Colors",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),),
      SizedBox(height: 10.0,),
      Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ChoiceChip(
              selectedColor: Colors.cyan,
              label: Text("红色",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              selected: true,
              onSelected: (value){
                setState(() {
                  print("colors");
                });
              },
            ),
          ),
        ],
      ),
    ],
  );

   Widget quantityCard() {
      return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text("Sizes",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),),
           SizedBox(height: 10.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               
             ],
           ),
         ],
      );
   }
}

class CommonDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade300,
      height: 8.0,
    );
  }
}