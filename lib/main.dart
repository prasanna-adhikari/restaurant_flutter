import 'package:flutter/material.dart';
import 'package:restaurant/pages/home.dart';
import 'package:restaurant/pages/productDetails.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home':(context)=> Home(),
      '/productDetail':(context)=> ProductDetails(),
    },
  ));
}


