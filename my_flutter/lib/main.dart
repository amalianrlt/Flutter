import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Text Style'),),
        body: Center(
          child: Text('Ini text akiuu', style: TextStyle(
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

