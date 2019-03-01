import 'package:flutter/material.dart';

class mine extends StatefulWidget {
  @override
  _mineState createState() => _mineState();
}

class _mineState extends State<mine> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SimpleRoundButton(
          backgroundColor: Colors.red,
          // textColor: Colors.white,
          buttonText: Text(
            "按钮按钮按钮按钮",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
          onPressed: (){
            print("object");
          },
        ),
    );
  }
}



/// 四周带圆角的button
class SimpleRoundButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Color textColor;
  final Function onPressed;
  SimpleRoundButton({
    this.backgroundColor,
    this.buttonText,
    this.textColor,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.only(left: 20.0,right: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              splashColor: this.backgroundColor,
              color: this.backgroundColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20.0,bottom: 20.0),
                    child: buttonText,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                ],
              ),
              onPressed: () =>onPressed,
            ),
          ),
        ],
      ),
    );
  }
}