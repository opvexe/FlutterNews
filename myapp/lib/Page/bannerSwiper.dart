import 'package:flutter/material.dart';
//引入第三方库轮播广告
import 'package:flutter_swiper/flutter_swiper.dart';

class bannerSwiperView extends StatefulWidget {
  @override
  _bannerSwiperViewState createState() => _bannerSwiperViewState();
}

class _bannerSwiperViewState extends State<bannerSwiperView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          '轮播视图',
        ),
      ),
      body: Container(
        height: 280.0,
        child: Swiper(
          itemCount: 10, 
          pagination: new SwiperPagination(),
          autoplay: true,
          duration: 3,
          itemBuilder: (BuildContext context,int index){
            return new Container(
              color: Colors.yellow,
            );
          },
        ),
      ),
    );
  }
}

