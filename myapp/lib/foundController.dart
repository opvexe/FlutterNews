import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'Page/headerWidget.dart';

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
      body: _productWidget(),
    );
  }
}

class _productWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Column(
          children: <Widget>[
            _backgroundWidget(),
            bottomHalf(),
          ],
        ),
        _productDetailWidget(),
      ],
    );
  }

  Widget bottomHalf() {
    return Flexible(
      flex: 3,
      child: new Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueGrey.shade800,
              Colors.black87,
            ],
          ),
        ),
      ),
    );
  }
}

class _productDetailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: deviceSize.height / 4,
          ),
          _topCardWidget(context),
          _photoWidget(context),
          _descWidget(context),
          _selectWidget(context),
        ],
      ),
    );
  }

  Widget _topCardWidget(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Card(
        elevation: 2.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "价格",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("海澜之家"),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "4星好评",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "￥ 20.0",
                    style: TextStyle(
                        color: Colors.orange.shade800,
                        fontWeight: FontWeight.w700,
                        fontSize: 25.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  //衣服相册
  Widget _photoWidget(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SizedBox(
      height: deviceSize.height / 5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Card(
          elevation: 2.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Image.network(
                  "https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg",
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

//描述
  Widget _descWidget(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("描述",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(
                height: 5.0,
              ),
              Text("牛仔裤 T-shirt",
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal)),
            ],
          ),
        ),
      ),
    );
  }

//选择款式
  Widget _selectWidget(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _shopWidget(),
          
        ),
      ),
    );
  }
}

///选择
class _shopWidget extends StatefulWidget {
  @override
  __shopWidgetState createState() => __shopWidgetState();
}

class __shopWidgetState extends State<_shopWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[],
    );
  }

  Widget _colorWidget(BuildContext context) {
    String _value = "Cyan";
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("颜色",style:TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0)),
          SizedBox(height: 10.0,),
          // Wrap(
          //   alignment: WrapAlignment.spaceBetween,
          //   children: <Widget>[
          //     Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ChoiceChip(
          //           selectedColor: Colors.red,
          //           label: Text("黄色",style: TextStyle(fontWeight: FontWeight.bold),),
          //           selected: true,
          //           onSelected: (selected){
          //             setState(() {
          //               _value = selected?"red":"Cyan";
          //             });
          //           },
          //         ),
          //     ),
          //     // Padding(
          //     //     padding: const EdgeInsets.all(8.0),
          //     //     child: ChoiceChip(
          //     //       selectedColor: Colors.red,
          //     //       label: Text("黄色",style: TextStyle(fontWeight: FontWeight.bold),),
          //     //       selected: true,
          //     //       onSelected: (selected){
          //     //         setState(() {
          //     //           _value = selected?"red":"Cyan";
          //     //         });
          //     //       },
          //     //     ),
          //     // ),
          //     // Padding(
          //     //     padding: const EdgeInsets.all(8.0),
          //     //     child: ChoiceChip(
          //     //       selectedColor: Colors.red,
          //     //       label: Text("黄色",style: TextStyle(fontWeight: FontWeight.bold),),
          //     //       selected: true,
          //     //       onSelected: (selected){
          //     //         setState(() {
          //     //           _value = selected?"red":"Cyan";
          //     //         });
          //     //       },
          //     //     ),
          //     // ),
          //     // Padding(
          //     //     padding: const EdgeInsets.all(8.0),
          //     //     child: ChoiceChip(
          //     //       selectedColor: Colors.red,
          //     //       label: Text("黄色",style: TextStyle(fontWeight: FontWeight.bold),),
          //     //       selected: true,
          //     //       onSelected: (selected){
          //     //         setState(() {
          //     //           _value = selected?"red":"Cyan";
          //     //         });
          //     //       },
          //     //     ),
          //     // ),
          //   ],
          // ),
        ],
    );
  }
}

//绘制背景图片
class _backgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Flexible(
      flex: 2,
      child: ClipPath(
        clipper: ArcClipper(),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey.shade800,
                    Colors.black87,
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Image.network(
                "https://mosaic02.ztat.net/vgs/media/pdp-zoom/LE/22/1D/02/2A/12/LE221D022-A12@16.1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//绘制半弧形
class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    ///绘制左侧半弧形
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    //绘制右侧半弧形
    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
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
