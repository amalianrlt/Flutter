import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// how to add font :
// 1. make a folder for font that you want to use
// 2. put your ttf font File
// 3. edit the yaml
// 4 use in dart file (like line 24)

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Style'),),
        body: Center(
          child: Text('Ini text akuu', style: TextStyle(
            fontFamily : 'Poppins', 
            fontSize: 35, 
            color: Colors.deepOrange,
            decoration: TextDecoration.overline,
            ),),
          ),
      ),
    );
  }
}

