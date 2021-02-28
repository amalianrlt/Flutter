import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Center(
        child: RaisedButton(
          child: Text('back'),
          onPressed: (){
            Navigator.pop(context);
          })
      )
    );
  }
}