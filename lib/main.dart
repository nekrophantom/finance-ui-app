// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Lato',
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
            fontWeight: FontWeight.bold
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          titleSmall: TextStyle(
            fontSize: 16,
            color: Colors.white
          ),
          bodyLarge: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.w800
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          labelMedium: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          labelSmall: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
            fontWeight: FontWeight.bold
          )
        ),
      ),
    );
  }
}