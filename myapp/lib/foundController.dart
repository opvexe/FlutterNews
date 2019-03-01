import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class found extends StatefulWidget {
  @override
  _foundState createState() => _foundState();
}

class _foundState extends State<found> {
  final List<String> items = [
    "https://webimg.ziroom.com/bfcbe5ad-9c28-4d0f-bf6b-3518ba925382.png",
    "http://image.ziroom.com/g2/M00/D8/D0/ChAFD1sD-pWAYMR0AAaVs5KicYo979.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0, //去掉导航底部阴影
        leading: leftItemsButton(
          title: "北京",
        ),
        title: searchTextFieldWidget(),
        actions: <Widget>[
          new IconButton(
            padding: EdgeInsets.only(right: 10, left: 0.0),
            icon: Image.asset("assets/images/select_message.png"),
          )
        ],
      ),
      body: ListView(
        // physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          swipWidget(
            url: items,
          ),
          houseWidget(),
          houseWidget(),
          travelWidget(),
        ],
      ),
    );
  }
}


class houseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.orange.shade300,
              // width: 120.0,
              padding: EdgeInsets.zero,
            ),
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              // width: 120.0,
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                margin: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.green,
                      height: 55.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      color: Colors.purple,
                      height: 55.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              // width: 120.0,
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                margin: EdgeInsets.zero,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      color: Colors.green,
                      height: 55.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      color: Colors.purple,
                      height: 55.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

///旅行
class travelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 60.0,
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.green,
              margin: EdgeInsets.zero,
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              width: 60.0,
              color: Colors.red,
              margin: EdgeInsets.only(left: 10.0),
            ),
            flex: 1,
          ),
          Expanded(
            child: Container(
              width: 60.0,
              color: Colors.orange,
              margin: EdgeInsets.only(left: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}

//轮播图
class swipWidget extends StatelessWidget {
  swipWidget({
    @required this.url,
  });
  final List<String> url;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.loose(new Size(double.infinity, 180.0)),
      color: Colors.black,
      margin: EdgeInsets.all(20.0),
      child: Swiper(
        physics: NeverScrollableScrollPhysics(),
        itemCount: url.length,
        autoplay: true,
        autoplayDelay: 3, //横向滚动
        scrollDirection: Axis.horizontal,
        pagination: new SwiperPagination(
            margin: EdgeInsets.only(bottom: 3.0),
            builder: DotSwiperPaginationBuilder(
              size: 5.0,
              activeSize: 5.0,
              color: Colors.white,
              activeColor: Colors.black,
            )),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            url[index],
            fit: BoxFit.fill,
          );
        },
      ),
    );
  }
}

//导航左侧定位按钮
class leftItemsButton extends StatelessWidget {
  leftItemsButton({
    this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, bottom: 5.0),
      width: 180.0,
      height: 40.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("$title"),
          Image.asset("assets/images/select_down_city.png"),
        ],
      ),
    );
  }
}

//搜索框
class searchTextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      alignment: Alignment.center,
      height: 40.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0), //内间距
      child: buildTextField(),
    );
  }

  Widget buildTextField() {
    return Theme(
      data: ThemeData(primaryColor: Colors.grey), //图片高亮颜色
      child: TextField(
        cursorColor: Colors.grey, //光标颜色
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: -8.0), //文本间距
          border: InputBorder.none,
          icon: Icon(Icons.search),
          hintText: "输入小区/商圈/地铁等",
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: Colors.grey,
          ),
        ),
        style: new TextStyle(fontSize: 14.0, color: Colors.black),
        onChanged: (String textFiled) {
          print("$textFiled");
        },
      ),
    );
  }
}
