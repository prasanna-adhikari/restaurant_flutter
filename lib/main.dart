import 'package:flutter/material.dart';
import 'package:restaurant/pages/home.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home':(context)=> Home(),
    },
  ));
}


