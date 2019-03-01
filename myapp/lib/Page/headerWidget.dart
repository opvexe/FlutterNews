import 'package:flutter/material.dart';

class headerWidget extends StatelessWidget {
  final String imageUrl;
  headerWidget({
    this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      margin: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                   imageUrl,
                ),
              ),
            ),
          ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15.0,right: 15.0),
              padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(width: 1.0,color: Colors.grey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, //左右
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "你可以写一些想法在这里...",
                       style: TextStyle(fontSize: 14.0),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "you can wirte something here ...",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: new Icon(
                  Icons.photo,
                  color: Colors.grey,
                ),
              ),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "相册",
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}