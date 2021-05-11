import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
class Image_carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 220.0,
        width: double.infinity,
        child: Carousel(
          boxFit: BoxFit.cover,
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 6.0,
          // dotIncreasedColor: Color(0xFFFF335C),
          dotIncreasedColor: Color(0xFFFF7932),
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomCenter,
          dotVerticalPadding: 5.0,
          showIndicator: true,
          indicatorBgPadding: 7.0,
          images: [
            AssetImage('images/slide1.jpg'),
            AssetImage('images/slide2.jpg'),
            AssetImage('images/slide3.jpg'),
          ],
        ),
      ),
    );
  }
}

